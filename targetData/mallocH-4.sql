

     CREATE TABLE abc(a PRIMARY KEY, b, c);
  

     EXPLAIN SELECT * FROM abc AS t2 WHERE rowid=1;
     EXPLAIN QUERY PLAN SELECT * FROM abc AS t2 WHERE rowid=1;
  
