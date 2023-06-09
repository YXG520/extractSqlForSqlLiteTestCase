

       DROP TABLE IF EXISTS t1;
       CREATE TABLE t1(a INT, b INT);
       DROP TABLE IF EXISTS t2;
       CREATE TABLE t2(x INT, y INT);
    
SELECT * FROM t1 $jointype t2 ON $onclause WHERE $whereclause

PRAGMA automatic_index=ON;

PRAGMA automatic_index=OFF;

PRAGMA automatic_index=ON;
