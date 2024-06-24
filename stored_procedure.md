## Stored procedure

일련의 쿼리를 마치 하나의 함수처럼 실행하기 위한 쿼리 집합.

```
CREATE PROCEDURE increaseMinSalary(money INT, rid INT)
BEGIN
  START TRANSACTION;
  UPDATE table.role SET min_salary = money WHERE id = rid;
  UPDATE table.emplayee SET salary = money WHERE role_id = rid AND salary < money;
  COMMIT;
END

CALL increaseMinSalary(5500, 3);
```
