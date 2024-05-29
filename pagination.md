## Pagination
정렬 기준과 개수에 따라 데이터를 가져오는 것

### 1. Offset
어디서부터 시작해 데이터를 가져올지 결정하는 것
```
SELECT * FROM store ORDER BY id DESC LIMIT 10 OFFSET 10;
```
- Offset은 요청한 데이터를 바로 조회하는 것이 아니라, 이전 데이터를 모두 조회하고, 그 결과값을 조건대로 잘라내는 것이다.

### 2. Cursor Pagination
몇 개의 데이터를 가져올지 결정하는 것. 페이스북과 같이 하단으로 스크롤이 되는 페이징 방식을 지원한다.
- 데이터를 정적으로 유지하는 것이 불필요하기 때문에, 새로운 데이터가 추가 및 제거될 수 있는 상황에서 실시간 데이터를 효율적으로 다룰 수 있다.
- 커서 페이징은 정렬할 컬럼에 중복값이 존재하면 안되고, 순차적이어야 하며, 작은 단위의 Timestamp를 주로 사용한다.
```
SELECT * FROM store WHERE (...condition) ORDER BY created_date ASC LIMIT 4;
```
