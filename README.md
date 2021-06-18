# Simple Docker React

## 명령어

react-app이라는 태그를 붙이고 현재 위치(.)의 Dockerfile에 작성한대로 이미지를 생성한다.
```
docker build -t react-app .
```

## .dockerignore

Dockerfile에서 COPY를 할 때 포함하지 않을 파일이나 폴더