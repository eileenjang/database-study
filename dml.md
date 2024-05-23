## DML
### 1. Update / Delete FK Options
- RESTRICT - 개체를 변경/삭제할 때 다른 개체가 참조하고 있을 경우 변경/삭제가 취소된다.
- SET NULL - 개체를 변경/삭제할 때 다른 개체가 참조하고 있을 경우 참조 값을 NULL 로 세팅한다.
- CASCADE - 개체를 변경/삭제할 때 다른 개체가 참조하고 있을 경우 함께 변경/삭제 된다.
- NO ACTION - 개체를 변경/삭제할 때 다른 개체가 참조하고 있을 경우 참조하는 객체는 변동 없다.

### 2. UPDATE
`UPDATE employee SET salary = ? WHERE name = ?`

### 3. INSERT INTO
`INSERT INTO employee (name, salary, team) VALUES ("a', 6000, "개발"), ("b", 7000, "디자인")`

### 4. DELETE
1. Hard delete
`DELETE FROM employee WHERE id = ?`
2. Soft delete
`UPDATE employee SET salary = 10000 WHERE id = ?`
