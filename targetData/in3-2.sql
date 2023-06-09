

    DROP TABLE IF EXISTS t1;
    CREATE TABLE t1(w int, x int, y int);
    CREATE TABLE t2(p int, q int, r int, s int);
  
INSERT INTO t1 VALUES($w,$x,$y)
select max(y) from t1
 INSERT INTO t2 SELECT 101-w, x, $maxy+1-y, y FROM t1 


    SELECT rowid 
    FROM t1 
    WHERE rowid IN (SELECT rowid FROM t1 WHERE rowid IN (1, 2));
  


    select rowid from t1 where rowid IN (-1,2,4)
  


    SELECT rowid FROM t1 WHERE rowid IN 
       (select rowid from t1 where rowid IN (-1,2,4))
  
