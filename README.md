# Simple Docker React

## Docker 명령어

### 이미지 빌드
react-image라고 이름 짓고 현재 위치(.)의 Dockerfile에 작성한대로 이미지를 생성한다.
```
docker build -t react-image .
```

### (빌드된 이미지들 확인)
```
docker images
```

### (사용하지 않는 이미지 삭제)
코드를 수정하고 build 명령어를 입력할 때마다 새로운 이미지가 생성된다.\
과거에 생성한 사용하지 않는 이미지가 쌓이게 되는데 이를 삭제하려면 다음 명령어를 입력한다.
```
docker image prune
```

### 콘테이너 생성
80포트로 접근할 수 있는 콘테이너를 생성하고 실행한다.\
react-image라는 이미지를 이용해서 콘테이너를 만들고\
react-container로 이름 짓는다.\
모든 콘테이너는 3000 포트로 연결된다.
```
docker run -d -p 80:3000 --name react-container react-image
```
[http://localhost:80](http://localhost:80)으로 리액트 앱에 접속할 수 있다.

### (실행중인 콘테이너 확인)

```
docker ps
```

## .dockerignore

Dockerfile에서 COPY를 할 때 포함하지 않을 파일이나 폴더