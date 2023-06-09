

    BEGIN TRANSACTION;
    CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c, UNIQUE(b, c));
    CREATE TABLE fkey(
      to_tbl,
      to_col
    );
    INSERT INTO "fkey" VALUES('t1',NULL);
    COMMIT;
  

 CREATE VIRTUAL TABLE v_col USING schema 

 SELECT name FROM v_col WHERE tablename = 't1' AND pk 


    UPDATE fkey 
    SET to_col = (SELECT name FROM v_col WHERE tablename = 't1' AND pk);
  

 SELECT * FROM fkey 
