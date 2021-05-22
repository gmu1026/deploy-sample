# DeploySample
[![Build Status](https://cproduction.net:8080/buildStatus/icon?job=deploy-sample)](https://cproduction.net:8080/job/deploy-sample/)
## 1. 설명
- CI/CD 환경 테스트를 위한 샘플 프로젝트
---
## 2. 개발환경
- Mac OS Big Sur 11.3.1

- Openjdk 11

- SpringBoot 2.4.5

- Embedded H2 Database
---
## 3. 기능
- Index 페이지
- 무중단 배포를 위한 프로필 API
---
## 4. 설치
> git clone https://github.com/gmu1026/deploy-sample

> cd deploy-sample

> chmod +x gradlew

> gradlew clean build

> java -jar build/libs/DeploySample~.jar