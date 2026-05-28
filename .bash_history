sudo apt update
sudo apt-get upgrade
sudo apt full-upgrade
nano terminal_game.py
sudo apt update
sudo apt-get upgrade
sudo apt --fix-broken install
ps aux | grep -E 'apt|dpkg'
sudo rm -f /var/lib/dpkg/lock
sudo rm -f /var/lib/dpkg/lock-frontend
sudo rm -f /var/cache/apt/archives/lock
sudo rm -f /etc/passwd.lock
sudo rm -f /etc/shadow.lock
sudo dpkg --configure -a
mount | grep ' / '
lsattr /etc/passwd /etc/shadow
ls -l /etc/passwd /etc/shadow
df -h /
wsl --shutdown
sudo dpkg --configure -a
cat /etc/wsl.conf
ps -p 1 -o comm=
sudo apt update && sudo apt install python3-pip python3-venv -y
python3 -m venv nutri_env
source nutri_env/bin/activate
pip install ollama pymysql pandas streamlit
-- 1. 데이터베이스 생성 및 선택
CREATE DATABASE IF NOT EXISTS nutricore;
USE nutricore;
-- 2. 식품 영양성분 테이블 생성 (식품명, 탄수화물, 단백질, 지방, 나트륨, 칼로리)
CREATE TABLE IF NOT EXISTS food_nutrition (
);
-- 3. 금요일 데모용 핵심 샘플 데이터 5종 고속 인서트
INSERT INTO food_nutrition (food_name, carbs_g, protein_g, fat_g, sodium_mg, calories_kcal) VALUES
('현미밥', 75.0, 6.0, 2.0, 5.0, 350),
('닭가슴살 구이', 0.0, 31.0, 3.6, 65.0, 165),
('고등어 구이', 0.0, 24.0, 18.0, 350.0, 290),
('닭가슴살 샐러드', 12.0, 15.0, 5.0, 120.0, 180),
('짜장면', 130.0, 20.0, 25.0, 1200.0, 800);
-- 4. 데이터 잘 들어갔는지 최종 확인
SELECT * FROM food_nutrition;
-- 5. MySQL 빠져나오기
sudo mysql
CREATE DATABASE IF NOT EXISTS nutricore;
USE nutricore;CREATE DATABASE IF NOT EXISTS nutricore;
sudo dpkg --configure -a
sudo apt --fix-broken install
sudo apt full-upgrade
sudo apt-get install gcc
sudo apt upgrade
sudo apt update
sudo apt-get install cmake
sudo apt-get install build-essential
sudo apt-get install libfftw3-dev
sudo apt-get install gromacs
cd /mnt/c/Users/enduser/Desktop/gromacs-2025.2/
mkdir build
ls
rm -rf build
mkdir build
cd build
cmake .. -DGMX_BUILD_OWN_FFTW=ON -DREGRESSIONTEST_DOWNLOAD=ON
cd ..
cd build/
make
make check
sudo make install
cd ~
mkdir -p apps
cd apps
cp -r /mnt/c/Users/enduser/Desktop/gromacs-2025.2 .
