

    CREATE TABLE t15(a INTEGER PRIMARY KEY, b);
    INSERT INTO t15(a,b) VALUES(10,'abc'),(20,'def'),(30,'ghi');
    ALTER TABLE t15 ADD COLUMN c;
    CREATE INDEX t15c ON t15(c);
    INSERT INTO t15(a,b)
      VALUES(5,'zyx'),(15,'wvu'),(25,'tsr'),(35,'qpo');
    UPDATE t15 SET c=printf('y%d',a) WHERE c IS NULL;
    SELECT a,b,c,'|' FROM t15 ORDER BY a;
  
