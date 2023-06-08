CREATE TABLE t1(abcd, efgh);

ALTER TABLE t1 RENAME abcd TO dcba
  
PRAGMA encoding = 'utf-16';
  CREATE TABLE t1(abcd, efgh);

ALTER TABLE t1 RENAME abcd TO dcba
  
CREATE TABLE t1(abcd, efgh);
  CREATE VIEW v1 AS SELECT * FROM t1 WHERE abcd>efgh;

ALTER TABLE t1 RENAME abcd TO dcba
  
CREATE TABLE rr(a, b);
  CREATE VIEW vv AS SELECT * FROM rr;

  CREATE TRIGGER vv1 INSTEAD OF INSERT ON vv BEGIN
    SELECT 1, 2, 3;
  END;
  CREATE TRIGGER tr1 AFTER INSERT ON rr BEGIN
    INSERT INTO vv VALUES(new.a, new.b);
  END;

SELECT * FROM sqlite_master 
ALTER TABLE rr RENAME a TO c;
  
CREATE TABLE rr(a, b);
  CREATE VIEW vv AS SELECT * FROM (
    WITH abc(d, e) AS (SELECT * FROM rr)
    SELECT * FROM abc
  );

SELECT * FROM sqlite_master 
ALTER TABLE rr RENAME TO c;
  
