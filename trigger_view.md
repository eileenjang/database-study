## Trigger

```
DELIMITER //
CREATE TRIGGER updateSalaryWhenMinSalaryChange AFTER UPDATE ON table.role
FOR EACH ROW
BEGIN
  UPDATE table.employee SET salary = NEW.min_salary WHERE role_id = NEW.id AND salary < NEW.min_salary;
END //
DELIMITER ;

SHOW TRIGGERS;
```

## View

```
CREATE OR REPLACE VIEW table.ep_view
AS SELECT employee_id, project_id, role_id, e.name as employee_name, salary, team FROM
LEFT JOIN table.employee_project ep ON e.id = ep.employee_id;
```
