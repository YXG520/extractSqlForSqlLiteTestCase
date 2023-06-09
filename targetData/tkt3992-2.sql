

      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
      ALTER TABLE t1 ADD COLUMN c DEFAULT 3;
      SELECT * FROM t1;
    


      UPDATE t1 SET a = 'one';
      SELECT * FROM t1;
    


      CREATE TABLE t2(a REAL, b REAL, c REAL);
      INSERT INTO t2 VALUES(1, 2, 3);
      CREATE TRIGGER tr2 BEFORE UPDATE ON t2 BEGIN
        SELECT tcl('set res', typeof(new.c));
      END;
  
      UPDATE t2 SET a = 'I';
    
