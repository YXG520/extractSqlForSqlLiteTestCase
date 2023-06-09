

    CREATE TABLE t1(w int, x int, y int);
    CREATE TABLE t2(p int, q int, r int, s int);
  
INSERT INTO t1 VALUES($w,$x,$y)

      INSERT INTO t2 SELECT 101-w, x, (SELECT max(y) FROM t1)+1-y, y FROM t1;
    
select max(y) from t1

      INSERT INTO t2 SELECT 101-w, x, $maxy+1-y, y FROM t1;
    

    CREATE INDEX i1w ON t1("w");  -- Verify quoted identifier names
    CREATE INDEX i1xy ON t1(`x`,'y' ASC); -- Old MySQL compatibility
    CREATE INDEX i2p ON t2(p);
    CREATE INDEX i2r ON t2(r);
    CREATE INDEX i2qs ON t2(q, s);
  

  set ::sqlite_search_count 0
  return [concat [execsql $sql] $::sqlite_search_count]




S

S


SELECT x, y, w FROM t1 WHERE +w=10


S


S









S

S


S


S




S

S










































