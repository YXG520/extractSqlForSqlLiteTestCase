
EXPLAIN BEGIN
BEGIN

EXPLAIN COMMIT
COMMIT

BEGIN; EXPLAIN ROLLBACK
ROLLBACK


      CREATE TABLE ex1(
        a INTEGER DEFAULT 54321,
        b TEXT DEFAULT "hello",
        c REAL DEFAULT 3.1415926
      );
      CREATE UNIQUE INDEX ex1i1 ON ex1(a);
      EXPLAIN REINDEX;
    


        EXPLAIN SELECT a+123456789012, b*4.5678, c FROM ex1 ORDER BY +a, b DESC
      


        EXPLAIN SELECT a+123456789012, b*4.5678, c FROM ex1 ORDER BY +a, b DESC
      
