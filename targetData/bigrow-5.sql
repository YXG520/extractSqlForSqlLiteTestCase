

    DELETE FROM t1;
    INSERT INTO t1(a,b,c) VALUES('one','abcdefghijklmnopqrstuvwxyz0123','hi');
  
SELECT a,length(b),c FROM t1


      UPDATE t1 SET b=b||b;
      SELECT a,length(b),c FROM t1;
    

UPDATE t1 SET b=b||b

SELECT length(b) FROM t1

UPDATE t1 SET b=b||b

SELECT length(b) FROM t1

DROP TABLE t1
