# M I R O O M 회의실 관리 플랫폼
- 'Spring Boot' + 'Spring Security' + 'My batis' + 'AWS RDS(My SQL)를 이용한 회의실 관리 플랫폼
- 최신 버전 : `V.2.1.5` 
## SCREENSHOT
<p float="left">
  <img src="https://user-images.githubusercontent.com/45276804/96376066-c8c56880-11b7-11eb-8a3b-f63810f183dc.png" width="49%" style="margin-right:10px" />
  <img src="https://user-images.githubusercontent.com/45276804/96376100-ed214500-11b7-11eb-9fa6-97b839855b06.png" width="49%" style="margin-right:10px" />  
  <img src="https://user-images.githubusercontent.com/45276804/96376169-412c2980-11b8-11eb-96fd-64e85d5acf5c.png" width="49%" style="margin-right:10px" />
   <img src="https://user-images.githubusercontent.com/45276804/96376227-9f590c80-11b8-11eb-8e4f-d2551c4cb665.png" width="49%"/>
</p>
<p float="left">
  <img src="https://user-images.githubusercontent.com/45276804/96375943-1db4af00-11b7-11eb-89b3-c65f49cc132f.png" width="49%" style="margin-right:10px" />
  <img src="https://user-images.githubusercontent.com/45276804/96375952-27d6ad80-11b7-11eb-8335-36e1771d76db.png" width="49%" /> 
</p>
<p float="left">
  <img src="https://user-images.githubusercontent.com/45276804/96375956-302ee880-11b7-11eb-8f2b-f72ace8534ef.png" width="49%" style="margin-right:10px" />
  <img src="https://user-images.githubusercontent.com/45276804/96375971-4046c800-11b7-11eb-9470-1c236398e0a4.png" width="49%" /> 
</p>
<p float="left">
  <img src="https://user-images.githubusercontent.com/45276804/96375980-4dfc4d80-11b7-11eb-8d9f-65c708d2c8e3.png" width="49%" style="margin-right:10px" />
  <img src="https://user-images.githubusercontent.com/45276804/96375985-56548880-11b7-11eb-950f-d9c89c7606f4.png" width="49%" /> 
</p>

## 목표
- `세션` 기반 인증 with `Spring Security`
- `AWS EC2` 와 `AWS RDS`를 이용한 클라우드 서비스
- `회의실` 현황 조회 / 예약 관리 / 모니터링 
- `Spring` -> `Spring Boot` 마이그레이션
## 개발환경

|     도구     |              버전               |
| :----------: | :-----------------------------: |
|    Spring    |    Spring Boot 2.3.4.RELEASE   |
|      OS      |            Mac OS X / Windows 10             |
|   개발 툴    | Intellij IDEA Ultimate 2020. 02 |
|     JDK      |             JDK 11               |
| 데이터베이스 |               AWS RDS (MySQL 8.0.20)                |
|   빌드 툴    |          Maven 2.5.1           |
|   패키지    |          WAR           |

## 의존성

- Spring Web
- Spring Security
- Spring Data JPA
- MySQL
- MyBatis
- Junit
- slf4j

## Done List
- AWS RDS 인스턴스 개설
- 로그인 및 세션 관리
- 로그인 핸들러
- 대시보드
- 회의실 현황
- 스케쥴러

## 실행방법
1. EC2 인스턴스에 `jdk 11`설치

2. EC2 인스턴스에 `git` 설치

3. `git clone repository`

4. `./mvnw clean package`

5. `target` 에서`nohup java -jar [빌드된 war 파일이름] &`

## 기여자
- 경북대학교 컴퓨터학부 산학프로젝트
- (주) 제이솔루션
- BootStrap Template `RUANGADMIN`