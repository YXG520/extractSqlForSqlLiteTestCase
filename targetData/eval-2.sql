

  execsql {
    CREATE TABLE t2(x,y);
    INSERT INTO t2 SELECT x, x+1 FROM t1 WHERE x<5;
    SELECT x, test_eval('DELETE FROM t2 WHERE x='||x), y FROM t2;
  


  execsql {
    SELECT * FROM t2
  


  execsql {
    INSERT INTO t2 SELECT x, x+1 FROM t1 WHERE x<5;
    SELECT x, test_eval('DELETE FROM t2 WHERE x='||x), y FROM t2
     ORDER BY rowid DESC;
  


  execsql {
    SELECT * FROM t2
  
