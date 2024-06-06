## SELECT and WHERE

```
SELECT id, name FROM schema.employeetable WHERE team = "dev" AND quit_date IS NULL;
SELECT count(*) FROM schema.employeetable em WHERE team = "dev";
SELECT avg(salary) as "average" FROM schema.employeetable em;
SELECT * FROM schema.employeetable WHERE team = "dev" ORDER BY salary DESC;
```

## INNER JOIN

```
SELECT count(*) as `number`, salary FROM zerocho.employeetable GROUP BY salary;
SELECT schema.employeetable.role_id FROM schema.employeetable JOIN schema.roletable ON schema.employeetable.role_id = schema.roletable.id
GROUP BY schema.roletable.id;
```

## LEFT/RIGHT join

```
SELECT * FROM schema.employeetable RIGHT JOIN schema.roletable ON schema.employeetable.role_id = zerocho.roletable.id;
```

## FULL OUTER JOIN

```
SELECT * FROM zerocho.employeetable LEFT JOIN zerocho.roletable ON zerocho.employeetable.role_id = zerocho.roletable.id
UNION
SELECT * FROM zerocho.employeetable RIGHT JOIN zerocho.roletable ON zerocho.employeetable.role_id = zerocho.roletable.id;
```

## CROSS JOIN
- without ON


