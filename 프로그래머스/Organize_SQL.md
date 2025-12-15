# SQL 문법 정리 

## 1. 쿼리 기본 구조 및 필터링

| 문법 | 해설 (목적) | 사용 예시 |
| :--- | :--- | :--- | 
| **SELECT** | 조회할 컬럼(열) 지정|`SELECT ITEM_ID, RARITY` |
| **DISTINCT** | `SELECT`된 결과 행의 중복을 제거 | `SELECT DISTINCT name` |
| **FROM** | 데이터를 가져올 대상 테이블 지정 | `FROM food_warehouse` |
| **WHERE** | 행(레코드)에 조건을 걸어 데이터 필터링 |`WHERE category = '인문'` |
| **LIKE** | 특정 문자열 패턴 검색 |`WHERE address LIKE '서울%'` |
| **COUNT/SUM/MAX/MIN** | 집계 함수: 행 개수, 총합, 최댓값, 최솟값 계산 |`COUNT(user_id), MAX(price)` |
| **GROUP BY** | 결과를 특정 기준으로 묶어 계산 |`GROUP BY i.rest_id` |
| **HAVING** | `GROUP BY`로 그룹화된 결과에 대해 조건을 걸어 필터링 |`HAVING AVG(score) > 4.0` |
| **ORDER BY** | 최종 결과를 특정 컬럼 기준으로 정렬 |`ORDER BY score DESC/ASC` |
| **LIMIT** | 쿼리 결과의 행 개수를 지정된 수만큼만 제한 |`LIMIT 10 (가장 위 10개만 출력)`|

## 2. 날짜, 숫자, NULL 처리 함수

| 함수/문법 | 해설 (기능) | 사용 예시 |
| :--- | :--- | :--- |
| **YEAR() / MONTH()** | 날짜/시간 컬럼에서 연도나 월을 추출 | `WHERE YEAR(date) = 2021` |
| **DATE_FORMAT()** | 날짜를 지정된 형식의 문자열로 변환하여 출력 | `DATE_FORMAT(date, '%Y-%m-%d')` |
| **AVG()** | 선택된 컬럼의 값들에 대한 평균을 계산 | `SELECT AVG(score)` |
| **ROUND()** | 숫자를 지정된 자릿수에서 반올림 처리 | `ROUND(AVG(score), 2)` |
| **CONCAT()** | 두 개 이상의 문자열 또는 컬럼을 연결하여 출력합니다. | `CONCAT(first_name, last_name)` |
| **CASE WHEN** | 조건에 따라 다른 값을 출력하는 조건문(if-else)을 구현 | `CASE WHEN score > 90 THEN 'A' ELSE 'B' END` |
| **IFNULL()** | 컬럼 값이 NULL일 경우, 지정된 대체 값으로 변경 | `IFNULL(freezer_yn, 'N')` |
| **IS NULL / IS NOT NULL** | `NULL` 값의 유무를 확인하여 필터링| `WHERE address IS NULL` (주소 값이 NULL인 행 필터링) |
| **AS** | 컬럼이나 테이블에 별칭부여 | `ROUND(AVG(score)) AS avg_score` |
| **DATEDIFF()** | 두 날짜 간의 차이를 일(day) 단위로 계산 | `DATEDIFF(end_date, start_date)` |




## 3. 테이블 결합 및 데이터 수정 문법

| 문법 | 해설 (목적) | 사용 예시 |
| :--- | :--- | :--- |
| **JOIN/ON** | 두 테이블의 공통 키가 일치하는 행을 결합 | `JOIN TableB B ON A.id = B.id` |
| **LEFT JOIN / RIGHT JOIN**| 왼쪽/오른쪽 테이블의 모든 행을 기준으로 결합 (외부 조인) | `LEFT JOIN Users U ON P.user_id = U.id` |
| **UNION ALL** | 두 쿼리 결과를 세로로 결합하며, 중복 행을 제거하지 않음 | `SELECT col FROM A UNION ALL SELECT col FROM B` |
| **UPDATE ... JOIN** | 다른 테이블의 데이터를 참조하여 대상 테이블의 값을 업데이트 | `UPDATE TableA a JOIN TableB b ON a.id = b.id SET a.col = b.col` |
| **INSERT INTO** | 테이블에 새로운 행(데이터)을 추가 | `INSERT INTO table (col1) VALUES (val1)` |
| **DELETE FROM** | 테이블에서 특정 조건의 행을 삭제 | `DELETE FROM table WHERE id = 100` |
