## Transaction

```
START TRANSACTION;
USE table;
UPDATE role SET min_salary = 4000 WHERE id = 4;
UPDATE empolyee SET salary - 4000 WHERE salary < 4000 AND role_id = 4;

COMMIT;
ROLLBACK;
```

## ACID

- Atomicity - 아톰, 트랜젝션은 하나의 단위. 모두 성공 or 모두 실패해야 함
- Consistency - 트랜젝션 수행 후 정상적인 데이터 가져야 함
- Isolaction - 트랜젝션이 여러개이면 서로 영향을 끼치면 안됨. (Lock, trigger, stored procedure, view)
- Durability - 성공하면 완전 저장, 실패하면 완전 복구

## 격리 수준
- Read uncommited (dirty read)
- Read commited (non repeatable read)
- Repeatable read (select 를 뒤로 빼고 commit/rollback 순서 뒤로 변경 등)
- Serializable (phantom read)

