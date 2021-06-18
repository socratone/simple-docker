# Simple Docker React

도커를 이용해서 리액트 앱을 띄우는 예제.\
앱을 실행하려면 아래 명령어로 이미지를 생성하고 콘테이너를 실행한다.

## Docker 명령어

### 이미지 생성

react-image라고 이름 짓고 현재 위치(.)의 Dockerfile에 작성한대로 이미지를 생성한다.

```
docker build -t react-image .
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

### 그밖에 알아야 할 명령어들

빌드된 이미지 리스트를 보여준다.

```
docker images
```

사용하지 않는 이미지를 삭제한다.

```
docker image prune
```

실행중인 콘테이너 리스트를 보여준다.

```
docker ps
```

멈춰 있는 콘테이너를 삭제한다.
```
docker container prune
```

## .dockerignore

Dockerfile에서 COPY를 할 때 포함하지 않을 파일이나 폴더