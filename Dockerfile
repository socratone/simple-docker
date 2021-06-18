# 용량이 최적화 돼 있는 알파인 리눅스 노드 이미지를 가져와서 시작한다.
FROM node:14.16.0-alpine3.13
# 이후의 명령은 /app 경로에서 이뤄진다.
WORKDIR /app
# package로 시작하고 .json으로 끝나는 모든 파일을 기본 경로에 복사한다.
COPY package*.json .
# package 설치
RUN npm install
# 현재 디렉토리(.)의 모든 파일들을 이미지의 기본 경로(.)에 복사한다.
COPY . .

# 여기까지 이미지 빌드 관련 설정
# 각 단계마다 레이어이고 캐싱이 적용된다.
# package.json과 나머지 파일들을 구분하는 이유는 캐싱을 하기 위해서다.

# 콘테이너를 실행할 때 입력하는 명령어
CMD ["npm", "start"]