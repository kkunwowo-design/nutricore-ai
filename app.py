import streamlit as st
import pandas as pd
import folium
import os
import base64
from streamlit_folium import st_folium

# ---------------------------------------------------
# 기본 설정
# ---------------------------------------------------
st.set_page_config(
    page_title="NutriCore AI",
    layout="wide"
)

# ---------------------------------------------------
# CSS 스타일 (가독성 증진을 위한 폰트 색상 딥화 🎨)
# ---------------------------------------------------
st.markdown("""
<style>
/* 카드 내부 이미지 컨테이너 (세로 확장형) */
.img-container {
    display: flex !important;
    justify-content: center !important;
    align-items: center !important;
    width: 100% !important;
    height: 400px !important; 
    background-color: #f8f9fa;
    border-radius: 12px;
    overflow: hidden;
    margin-bottom: 18px;
    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
}
.img-container img {
    width: 100% !important;
    height: 100% !important;
    object-fit: cover !important;
}

/* 글자색 진하게 조정 (가독성 확보 구역) */
.stMarkdown, p, li, span {
    color: #111827 !important; /* 전체적인 기본 텍스트를 아주 짙은 회색/검은색으로 강제 */
}

/* 마크다운 리스트 스타일 글자색 강화 */
.img-card-text {
    color: #1f2937 !important;
    font-size: 15px;
}

/* 캡션 글자색 진하게 변경 (기존의 연한 회색에서 짙은 색으로 변환) */
.stCaption {
    color: #374151 !important; /* 연한 색을 버리고 확실히 보이는 회색으로 변경 */
    font-size: 14px !important;
    font-weight: 500 !important;
}

.main {
    padding-top: 1rem;
}
.stButton > button {
    border-radius: 10px;
    height: 48px;
    font-weight: 600;
}
</style>
""", unsafe_allow_html=True)

# ---------------------------------------------------
# 이미지 로딩용 헬퍼 함수
# ---------------------------------------------------
def get_image_html(image_path):
    """이미지 파일을 Base64로 안전하게 인코딩하여 HTML 태그로 반환합니다."""
    if os.path.exists(image_path):
        with open(image_path, "rb") as image_file:
            encoded_string = base64.b64encode(image_file.read()).decode()
        ext = os.path.splitext(image_path)[1][1:].lower()
        if ext == "avif":
            mime_type = "image/avif"
        elif ext in ["jpg", "jpeg"]:
            mime_type = "image/jpeg"
        else:
            mime_type = f"image/{ext}"
            
        return f'<div class="img-container"><img src="data:{mime_type};base64,{encoded_string}"></div>'
    else:
        return '<div class="img-container" style="background-color:#E5E7EB; color:#111827; font-size:14px; font-weight:600;">📷 이미지를 찾을 수 없습니다</div>'

# ---------------------------------------------------
# 마스터 데이터셋
# ---------------------------------------------------
bk = [
    {"id":1,"food_name":"충주 사과 (순수 원물)","carbs_g":14.0,"protein_g":0.3,"fat_g":0.2,"sodium_mg":1.0},
    {"id":2,"food_name":"제천 황기 (약초 원물)","carbs_g":11.0,"protein_g":1.2,"fat_g":0.1,"sodium_mg":2.0},
    {"id":3,"food_name":"괴산 시금치 (생원물)","carbs_g":3.8,"protein_g":3.1,"fat_g":0.5,"sodium_mg":40.0},
    {"id":4,"food_name":"단양 곤드레나물 (생원물)","carbs_g":6.2,"protein_g":4.0,"fat_g":0.3,"sodium_mg":5.0},
    {"id":5,"food_name":"영동 포도 (천연 과채류)","carbs_g":15.2,"protein_g":0.6,"fat_g":0.2,"sodium_mg":2.0},
    {"id":6,"food_name":"보은 대추 (건조 원물)","carbs_g":61.5,"protein_g":2.3,"fat_g":0.4,"sodium_mg":3.0},
    {"id":7,"food_name":"음성 다올찬 수박 (생원물)","carbs_g":7.8,"protein_g":0.6,"fat_g":0.1,"sodium_mg":1.0},
    {"id":8,"food_name":"청주 청원생명쌀 (자연 곡류)","carbs_g":76.5,"protein_g":6.3,"fat_g":0.5,"sodium_mg":2.0},
    {"id":9,"food_name":"옥천 부추 (신선 엽채류)","carbs_g":4.3,"protein_g":2.0,"fat_g":0.3,"sodium_mg":3.0},
    {"id":10,"food_name":"진천 애호박 (친환경 과채류)","carbs_g":4.1,"protein_g":1.3,"fat_g":0.2,"sodium_mg":1.0},

    {"id":11,"food_name":"한우 등심 (고지방 단품)","carbs_g":0.0,"protein_g":16.0,"fat_g":33.0,"sodium_mg":55.0},
    {"id":12,"food_name":"천일염 (고나트륨 단품)","carbs_g":0.0,"protein_g":0.0,"fat_g":0.0,"sodium_mg":39000.0},
    {"id":13,"food_name":"찹쌀 (고당질 곡류 단품)","carbs_g":78.0,"protein_g":6.5,"fat_g":0.7,"sodium_mg":3.0},
    {"id":14,"food_name":"곶감 (고농축 당질 단품)","carbs_g":63.0,"protein_g":2.0,"fat_g":0.0,"sodium_mg":4.0},
    {"id":15,"food_name":"고추장 양념구이 (고나트륨/고지방)","carbs_g":18.5,"protein_g":11.2,"fat_g":14.5,"sodium_mg":850.0},
    {"id":16,"food_name":"매운 간장 조림닭 (고나트륨 단품)","carbs_g":12.0,"protein_g":18.5,"fat_g":9.0,"sodium_mg":1200.0},
    {"id":17,"food_name":"가공 버터 쿠키 (고지방/고당질)","carbs_g":65.0,"protein_g":5.0,"fat_g":22.0,"sodium_mg":280.0},
    {"id":18,"food_name":"초콜릿 퐁당 디저트 (고당질 단품)","carbs_g":58.0,"protein_g":4.2,"fat_g":28.0,"sodium_mg":110.0},
    {"id":19,"food_name":"라면 사리 (유탕면 고탄수화물)","carbs_g":65.0,"protein_g":9.0,"fat_g":15.0,"sodium_mg":550.0},
    {"id":20,"food_name":"염장 자반고등어 (고나트륨 식품)","carbs_g":0.1,"protein_g":19.5,"fat_g":12.0,"sodium_mg":1500.0}
]

df = pd.DataFrame(bk)

# ---------------------------------------------------
# 로컬 이미지 매핑
# ---------------------------------------------------
food_images = {
    "괴산 시금치 (생원물)": "images/시금치.avif",
    "진천 애호박 (친환경 과채류)": "images/애호박.avif",
    "옥천 부추 (신선 엽채류)": "images/부추.avif",
    "충주 사과 (순수 원물)": "images/사과.avif",
    "영동 포도 (천연 과채류)": "images/포도.avif",
    "제천 황기 (약초 원물)": "images/황기.avif",
    "보은 대추 (건조 원물)": "images/대추.avif",
    "음성 다올찬 수박 (생원물)": "images/수박.avif",
    "청주 청원생명쌀 (자연 곡류)": "images/쌀.avif",
    "단양 곤드레나물 (생원물)": "images/곤드레.jpg"
}

default_img = "images/시금치.avif"

# ---------------------------------------------------
# 🏡 로컬 농장 정보 및 위치 좌표 데이터베이스
# ---------------------------------------------------
farm_info_db = {
    "충주 사과 (순수 원물)": {
        "farm_name": "🍎 햇살가득 충주사과농원",
        "desc": "충주의 맑은 바람과 풍부한 일조량으로 키워내 당도가 높고 아삭한 식감이 일품인 최고급 정품 사과입니다.",
        "location": "충청북도 충주시 동량면 사과로 123",
        "contact": "043-123-4567",
        "lat": 37.0152, "lon": 127.9905
    },
    "제천 황기 (약초 원물)": {
        "farm_name": "🌿 제천 약초세상 영농조합",
        "desc": "석회암 지대인 제천에서 자라 조직이 단단하고 황기 특유의 우수한 약효 성분이 듬뿍 함유되어 있습니다.",
        "location": "충청북도 제천시 약초시장길 45",
        "contact": "043-987-6543",
        "lat": 37.1325, "lon": 128.1934
    },
    "괴산 시금치 (생원물)": {
        "farm_name": "🥬 괴산 청정 유기농 푸드농가",
        "desc": "친환경 유기농법으로 재배하여 흙이 깨끗하고 잎이 두꺼워 데쳤을 때 단맛과 고소한 풍미가 일품입니다.",
        "location": "충청북도 괴산군 문광면 청정로 78",
        "contact": "043-555-8899",
        "lat": 36.7781, "lon": 127.7943
    },
    "단양 곤드레나물 (생원물)": {
        "farm_name": "⛰️ 단양 소백산 산나물 작목반",
        "desc": "소백산 고랭지 청정 환경에서 채취하여 섬유질이 부드럽고 향이 깊어 나물밥용으로 최적입니다.",
        "location": "충청북도 단양군 가곡면 산나물길 12",
        "contact": "043-421-2233",
        "lat": 37.0163, "lon": 128.4112
    },
    "영동 포도 (천연 과채류)": {
        "farm_name": "🍇 영동 보랏빛 향기 와이너리 농원",
        "desc": "일교차가 큰 영동 지역 특성 덕분에 껍질이 얇고 과즙이 풍부한 고품질 명품 포도입니다.",
        "location": "충청북도 영동군 영동읍 포도원길 90",
        "contact": "043-742-1144",
        "lat": 36.1751, "lon": 127.7835
    },
    "보은 대추 (건조 원물)": {
        "farm_name": "🪵 보은 속리산 황토대추농가",
        "desc": "황토밭에서 정성껏 키워 알이 굵고 속이 꽉 찬 대추입니다. 자연 건조 과정을 거쳐 단맛이 뛰어납니다.",
        "location": "충청북도 보은군 보은읍 황토길 55",
        "contact": "043-543-8877",
        "lat": 36.4894, "lon": 127.7345
    },
    "음성 다올찬 수박 (생원물)": {
        "farm_name": "🍉 음성 다올찬 프리미엄 수박 단지",
        "desc": "비파괴 당도 선별기를 통해 12브릭스(Brix) 이상의 확고한 명품 수박만 출하하여 시원한 맛을 자랑합니다.",
        "location": "충청북도 음성군 맹동면 다올찬로 234",
        "contact": "043-872-0011",
        "lat": 36.9257, "lon": 127.5101
    },
    "청주 청원생명쌀 (자연 곡류)": {
        "farm_name": "🌾 청주 청원생명농협 쌀조합",
        "desc": "우렁이 공법 등 친환경 생태 농법으로 재배하여 밥을 지었을 때 윤기와 찰기가 오래 유지되는 명품 쌀입니다.",
        "location": "충청북도 청주시 청원구 오창읍 연구단지로 5",
        "contact": "043-215-9988",
        "lat": 36.7118, "lon": 127.4244
    },
    "옥천 부추 (신선 엽채류)": {
        "farm_name": "🌱 옥천 금강변 싱싱부추농원",
        "desc": "금강 주변의 비옥한 토양에서 자라나 향이 맑고 진하며 대가 곧아 신선도가 오래 지속됩니다.",
        "location": "충청북도 옥천군 동이면 금강로 67",
        "contact": "043-731-3344",
        "lat": 36.2842, "lon": 127.6015
    },
    "진천 애호박 (친환경 과채류)": {
        "farm_name": "🥒 진천 생거진천 시설채소작목반",
        "desc": "GAP(농산물우수관리) 인증을 받은 시설에서 안전하게 재배되어 속이 꽉 찬 애호박입니다.",
        "location": "충청북도 진천군 덕산읍 호박길 89",
        "contact": "043-534-1122",
        "lat": 36.8553, "lon": 127.4385
    }
}

# ---------------------------------------------------
# 세션 상태 초기화
# ---------------------------------------------------
if 'sorted_df' not in st.session_state:
    st.session_state.sorted_df = None

if 'clinical_data' not in st.session_state:
    st.session_state.clinical_data = {}

# ---------------------------------------------------
# 💾 1. 건강검진 데이터 입력 팝업창 함수
# ---------------------------------------------------
@st.dialog("📋 건강검진 데이터 입력", width="large")
def input_popup():
    st.markdown("<span style='color:#111827; font-weight:500;'>환자분의 정확한 생체 지표를 입력하시면 AI 기반 정밀 큐레이션이 시작됩니다.</span>", unsafe_allow_html=True)
    st.write("---")
    
    혈당 = st.number_input("🩸 공복 혈당 (mg/dL)", value=100)
    혈압 = st.number_input("🫀 수축기 혈압 (mmHg)", value=120)
    콜레스테롤 = st.number_input("🧪 총 콜레스테롤 (mg/dL)", value=130)

    st.write("")

    if st.button("🚀 검진 기반 로컬 식품 큐레이션 시작", use_container_width=True, type="primary"):
        glucose_high = 혈당 >= 100
        glucose_low = 혈당 < 70
        high_bp = 혈압 >= 130
        high_chol = 콜레스테롤 >= 200

        is_perfect_health = not (glucose_high or glucose_low or high_bp or high_chol)
        
        local_df = df.copy()
        local_df['score'] = 0.0

        local_keywords = ["충주", "제천", "괴산", "단양", "영동", "보은", "음성", "청주", "옥천", "진천"]
        local_df['is_local'] = local_df['food_name'].apply(lambda name: any(k in name for k in local_keywords))

        local_df.loc[local_df['is_local'] == True, 'score'] += 50.0

        r_rec = []
        avoid_nutrients = []
        avoid_reasons = []

        if glucose_high:
            local_df['score'] += (100 - local_df['carbs_g']) * 0.6
            r_rec.append("당질 부담이 적은 엽채류/약초류")
            avoid_nutrients.append("고당질")
            avoid_reasons.append("혈당 상승 유발")
        else:
            local_df['score'] += local_df['carbs_g'] * 0.2
            r_rec.append("기본 신체 에너지용 균형 식재료")

        if high_bp:
            local_df['score'] += (40000 - local_df['sodium_mg']) * 0.5
            avoid_nutrients.append("고나트륨")
            avoid_reasons.append("혈압 상승 압박")

        if high_chol:
            local_df['score'] += (50 - local_df['fat_g']) * 0.5
            avoid_nutrients.append("고지방")
            avoid_reasons.append("지질 대사 악화")

        st.session_state.sorted_df = local_df.sort_values(by='score', ascending=False)
        st.session_state.clinical_data = {
            "rec_effect": ", ".join(r_rec) if r_rec else "일반 식단 추천",
            "nutrient_str": " 및 ".join(avoid_nutrients) if avoid_nutrients else "없음",
            "reason_str": ", ".join(avoid_reasons) if avoid_reasons else "없음",
            "is_perfect_health": is_perfect_health
        }
        
        st.rerun()

# ---------------------------------------------------
# 🏪 2. 생산 농가 및 구글 지도 팝업창 함수
# ---------------------------------------------------
@st.dialog("🛒 생산 농가 및 직거래 위치 지도", width="large")
def show_farm_popup(food_name):
    farm = farm_info_db.get(food_name, {
        "farm_name": "현지 직거래 작목반",
        "desc": "본 식품은 AI 영양 알고리즘 기반으로 엄선된 충청북도 특산물입니다.",
        "location": "충청북도 해당 시·군 농업기술센터 문의",
        "contact": "지역 직거래 콜센터 연동 중",
        "lat": 36.6358, "lon": 127.4914
    })
    
    st.subheader(f"{food_name}")
    st.write("---")
    
    pop_col1, pop_col2 = st.columns([1, 1])
    
    with pop_col1:
        st.markdown(f"#### 🏠 생산처: **{farm['farm_name']}**")
        st.info(f"💡 **특징 및 설명**:\n{farm['desc']}")
        st.markdown("##### 📍 직거래 및 판매처 위치")
        st.caption(farm['location'])
        st.markdown("##### 📞 주문 및 구매 안내 연락처")
        st.success(f"**TEL**: {farm['contact']}")
        
    with pop_col2:
        st.markdown("##### 🗺️ 구글 맵(Google Maps) 위치 정보")
        
        m = folium.Map(
            location=[farm['lat'], farm['lon']], 
            zoom_start=14,
            tiles='https://mt1.google.com/vt/lyrs=m&x={x}&y={y}&z={z}', 
            attr='Google'
        )
        
        folium.Marker(
            [farm['lat'], farm['lon']], 
            popup=farm['farm_name'],
            tooltip=farm['farm_name'],
            icon=folium.Icon(color='red', icon='info-sign')
        ).add_to(m)
        
        st_folium(m, width="100%", height=320, returned_objects=[])
        
    st.write("---")
    st.caption("※ 본 지도는 Google Maps 시스템 타일을 임베딩하여 로드한 신뢰성 높은 지도 데이터입니다.")

# ---------------------------------------------------
# 메인 화면 렌더링 (결과 화면)
# ---------------------------------------------------
st.title("🧬 NutriCore AI 정밀 영양 시스템")
st.write("---")

if st.session_state.sorted_df is None:
    st.info("💡 맞춤형 분석을 위해 상단의 데이터 입력 창을 완료해 주세요.")
    input_popup()
else:
    c_data = st.session_state.clinical_data
    sorted_df = st.session_state.sorted_df
    top_3 = sorted_df.iloc[:3]

    # 상단 가이드 배너 (글씨 색상을 아주 짙은 숲색인 #0f2f1d 로 선명하게 수정)
    banner_html = f"""
    <div style="background-color:#F0FDF4; padding:24px; border-radius:14px; border-left:6px solid #22C55E; margin-bottom:30px;">
        <h3 style="color:#0f2f1d; margin:0; font-weight:800;">🎯 AI 추천 로컬 식품 핵심 가이드</h3>
        <p style="margin-top:10px; color:#1e3f20; font-size:16px; font-weight:600; margin-bottom:0;">
            현재 생체 지표 분석 기반 맞춤형 효과: <span style="color:#052e16; font-weight:800;">{c_data['rec_effect']}</span>
        </p>
    </div>
    """
    st.markdown(banner_html, unsafe_allow_html=True)

    if st.button("🔄 건강검진 지표 다시 입력하기 (팝업창 열기)", type="secondary"):
        input_popup()

    st.write("")
    st.markdown("## 🥗 추천 상위 3가지 식품")
    st.write("")

    col1, col2, col3 = st.columns(3)
    cols = [col1, col2, col3]

    # 추천 카드 출력
    for idx, (_, row) in enumerate(top_3.iterrows()):
        with cols[idx]:
            target_img = food_images.get(row['food_name'], default_img)

            img_html = get_image_html(target_img)
            st.markdown(img_html, unsafe_allow_html=True)
            
            st.markdown(f"### {row['food_name']}")
            st.write("---")

            st.markdown("#### 🧪 영양 성분")
            st.markdown(f"""
            <ul class="img-card-text" style="list-style-type: square; padding-left:20px; font-weight:600; color:#111827;">
                <li>탄수화물: {row['carbs_g']}g</li>
                <li>단백질: {row['protein_g']}g</li>
                <li>지방: {row['fat_g']}g</li>
            </ul>
            """, unsafe_allow_html=True)
            st.write("---")

            st.markdown("#### 📌 부가 정보")
            st.caption(f"나트륨 함량: {row['sodium_mg']}mg")
            st.caption(f"AI 정밀 연산 점수: {row['score']:.1f}점")
            st.write("---")

            if st.button(f"🛒 생산 농가 및 구매처 보기", key=f"btn_{row['id']}", use_container_width=True):
                show_farm_popup(row['food_name'])

    st.write("")
    st.write("---")

    # 테이블 전체 보기 객체
    with st.expander("🔍 식품 성분 및 AI 스코어링 테이블 전체 보기 (클릭하여 열기)", expanded=False):
        st.write("")
        final_table_df = sorted_df[['id', 'food_name', 'is_local', 'carbs_g', 'protein_g', 'fat_g', 'sodium_mg', 'score']]

        page = st.radio(
            "📄 데이터 페이지 선택",
            options=["1 페이지 (1-10위)", "2 페이지 (11-20위)"],
            horizontal=True
        )

        if "1 페이지" in page:
            st.dataframe(final_table_df.iloc[0:10], use_container_width=True)
        else:
            st.dataframe(final_table_df.iloc[10:20], use_container_width=True)
