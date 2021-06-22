# Simple Docker

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
모든 콘테이너는 3000 포트로 연결된다.\
react-data라는 volume을 생성해서 콘테이너의 /app/data에 연결한다.\
react-data가 이미 있으면 연결만 한다.

```
docker run -d -p 80:3000 -v react-data:/app/data --name react-container react-image
```
[http://localhost:80](http://localhost:80)으로 리액트 앱에 접속할 수 있다.

### 그밖에 알아야 할 명령어들

#### Image

빌드된 이미지 리스트를 보여준다.

```
docker images
```

사용하지 않는 이미지를 삭제한다.

```
docker image prune
```

#### Container

실행중인 콘테이너 리스트를 보여준다.

```
docker ps
```

멈춰 있는 콘테이너를 삭제한다.

```
docker container prune
```

콘테이너를 shell로 실행한다.
```
docker exec -it 콘테이너아이디 sh
```

콘테이너의 파일을 현재 위치에 복사한다.\
(콘테이너의 /app/one.js 파일을 복사)
```
docker cp 콘테이너아이디:/app/one.js .
```

특정 파일을 콘테이너에 복사해 넣는다.
(one.js 파일을 콘테이너의 /app 경로에 복사)
```
docker cp one.js 콘테이너아이디:/app
```

#### Volume

볼륨을 따로 생성한다.
```
docker volume create 볼륨이름
```

생성된 볼륨의 정보를 본다.
```
docker volume inspect 볼륨이름
```

## 파일 설명

### .dockerignore

Dockerfile에서 COPY를 할 때 포함하지 않을 파일이나 폴더