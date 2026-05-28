import pymysql
import ollama
import json

# 1. 로컬 MySQL 데이터베이스에서 5개 식품 영양 데이터 긁어오기
try:
    conn = pymysql.connect(host='localhost', user='root', password='', db='nutricore', charset='utf8mb4')
    cursor = conn.cursor(pymysql.cursors.DictCursor)
    cursor.execute("SELECT * FROM food_nutrition")
    food_data = cursor.fetchall()
    conn.close()
except Exception as e:
    print(f"❌ MySQL 연결 에러: {e}")
    print("팁: sudo systemctl start mysql 명령어를 실행했는지 확인하세요.")
    exit()

# 2. 임의로 만든 가상의 피험자(유저) 건강검진 데이터 세팅
user_health_profile = {
    "age": 45,
    "gender": "Male",
    "issue": "탄수화물 대사 저하 의심(당뇨 고위험군), 초기 고혈압 위험 (나트륨 제한 필수)"
}

# 3. AI에게 보낼 프롬프트 조립 (유저 정보 + 내 DB 식품 데이터 리스트)
prompt = f"""
당신은 정밀 영양 과학 푸드테크 플랫폼 'NutriCore'의 맞춤형 큐레이션 AI 엔진입니다.
아래 유저의 건강 상태와 우리가 보유한 로컬 식품 DB 목록을 분석하여, 유저에게 가장 최적화된 '추천 식단'과 절대로 먹어서는 안 되는 '금지 식단'을 선정하고 그 과학적 이유를 분석하세요.

[유저 건강 정보]
- 나이/성별: {user_health_profile['age']}세 / {user_health_profile['gender']}
- 특이사항: {user_health_profile['issue']}

[보유 식품 DB 리스트]
{json.dumps(food_data, ensure_ascii=False, indent=2)}

[출력 요구사항]
반드시 다른 자질구레한 설명 없이 오직 아래 양식의 JSON 데이터만 한국어로 출력하세요:
{{
    "recommended_food": "추천 식품명",
    "recommend_reason": "탄수화물 및 나트륨 수치와 엮은 과학적 추천 이유",
    "avoid_food": "금지 식품명",
    "avoid_reason": "유저 건강에 치명적인 이유 설명"
}}
"""

print("🚀 로컬 AI(Llama3) 엔진에 정밀 영양 큐레이션 요청 중... 잠시만 기다려주세요.")

# 4. Ollama 로컬 모델 호출
response = ollama.chat(model='llama3', messages=[
    {'role': 'user', 'content': prompt}
])

# 5. 결과 출력
print("\n🔥 [AI 정밀 영양 큐레이션 결과] 🔥")
print(response['message']['content'])
