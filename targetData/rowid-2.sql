

    INSERT INTO t1(rowid,x,y) VALUES(1234,5,6);
    SELECT rowid, * FROM t1;
  


    UPDATE t1 SET rowid=12345 WHERE x==1;
    SELECT rowid, * FROM t1
  


    INSERT INTO t1(y,x,oid) VALUES(8,7,1235);
    SELECT rowid, * FROM t1 WHERE rowid>1000;
  


    UPDATE t1 SET oid=12346 WHERE x==1;
    SELECT rowid, * FROM t1;
  


    INSERT INTO t1(x,_rowid_,y) VALUES(9,1236,10);
    SELECT rowid, * FROM t1 WHERE rowid>1000;
  


    UPDATE t1 SET _rowid_=12347 WHERE x==1;
    SELECT rowid, * FROM t1 WHERE rowid>1000;
  

UPDATE t1 SET x=2 WHERE OID==$x2rowid(3)
SELECT x FROM t1 ORDER BY x

UPDATE t1 SET x=3 WHERE _rowid_==$x2rowid(3)
SELECT x FROM t1 ORDER BY x

CREATE INDEX idxt1 ON t1(rowid)

CREATE INDEX idxt1 ON t1(_rowid_)

CREATE INDEX idxt1 ON t1(oid)

CREATE INDEX idxt1 ON t1(x, rowid)
