## Explain

mysql explain은 데이터베이스가 데이터를 찾아가는 과정을 DB 결과셋으로 보여주는 것이다. 이 실행계획을 통해 쿼리 튜닝, 성능분석 등을 처리할 수 있다.

```
EXPLAIN SELECT * FROM table WHERE name = "aa"
```

## Index

index란 추가적인 쓰기 작업과 저장공간을 활용해 데이터베이스 테이블 검색속도를 향상시키는 자료구조이다. (hash table, b+tree)

```
ADD INDEX `index_name` (`name` ASC, `salary` ASC, `team` ASC) VISIBLE
```

- 장점
  - 테이블 조회 속도와 성능 향상
  - 시스템 부하를 줄일 수 있음
- 단점
  - db의 추가 저장공간이 필요함
  - 잘못 사용시 성능 저하의 역효과 발생 (delete, update 빈번한 속성에 사용시)

인덱스가 automatically 걸리는 컬럼은 다음과 같다.
  - PK : 정렬과 검색을 위함
  - FK : 정렬과 검색을 위함
  - UNIQUE : unique 한 값 추가시 기존과 동일한 값이 있는지 검색을 위함
