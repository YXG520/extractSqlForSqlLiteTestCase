

      PRAGMA encoding=utf16le;
      PRAGMA encoding;
    


    CREATE TABLE t1(x,y);
    INSERT INTO t1 VALUES('abc''123',5);
    SELECT * FROM t1
  


    SELECT quote(x) || ' ' || quote(y) FROM t1
  


      DELETE FROM t1;
      INSERT INTO t1 VALUES(x'616263646566',NULL);
      SELECT * FROM t1
    


      SELECT quote(x) || ' ' || quote(y) FROM t1
    
