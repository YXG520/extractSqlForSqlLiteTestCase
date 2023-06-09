

    DELETE FROM t1;
    DELETE FROM t2;
  
INSERT INTO t1(x,y) VALUES($i,[expr {$i*$i}])
INSERT INTO t2 SELECT _rowid_, x*y, y*y FROM t1
SELECT t2.y FROM t1, t2 WHERE t1.x==4 AND t1.rowid==t2.rowid

SELECT t2.y FROM t2, t1 WHERE t1.x==4 AND t1.rowid==t2.rowid

SELECT t2.y FROM t2, t1 WHERE t1.x==4 AND t1.oid==t2.rowid

SELECT t2.y FROM t2, t1 WHERE t1.x==4 AND t1._rowid_==t2.rowid

SELECT t2.y FROM t2, t1 WHERE t1.x==4 AND t2.rowid==t1.rowid

SELECT t2.y FROM t2, t1 WHERE t2.rowid==t1.oid AND t1.x==4

SELECT t2.y FROM t1, t2 WHERE t1.x==4 AND t1._rowid_==t2.rowid

SELECT t2.y FROM t1, t2 WHERE t1.x==4 AND t2.rowid==t1.rowid

SELECT t2.y FROM t1, t2 WHERE t2.rowid==t1.oid AND t1.x==4

CREATE INDEX idxt1 ON t1(x)
SELECT t2.y FROM t1, t2 WHERE t1.x==4 AND t1.rowid==t2.rowid

SELECT t2.y FROM t1, t2 WHERE t1.x==4 AND t1._rowid_==t2.rowid

SELECT t2.y FROM t1, t2 WHERE t2.rowid==t1.oid AND 4==t1.x

SELECT t2.y FROM t2, t1 WHERE t1.x==4 AND t1.rowid==t2.rowid

SELECT t2.y FROM t2, t1 WHERE t1.x==4 AND t1._rowid_==t2.rowid

SELECT t2.y FROM t2, t1 WHERE t2.rowid==t1.oid AND 4==t1.x

CREATE INDEX idxt2 ON t2(y)

    SELECT t1.x FROM t2, t1 
    WHERE t2.y==256 AND t1.rowid==t2.rowid
  


    SELECT t1.x FROM t2, t1 
    WHERE t1.OID==t2.rowid AND t2.y==81
  


    SELECT t1.x FROM t1, t2
    WHERE t2.y==256 AND t1.rowid==t2.rowid
  
