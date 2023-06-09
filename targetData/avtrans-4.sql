

    COMMIT;
  


    ROLLBACK;
  


    BEGIN TRANSACTION;
    UPDATE two SET a = 0 WHERE 0;
    SELECT a FROM two ORDER BY a;
  


    SELECT a FROM two ORDER BY a;
  


    SELECT a FROM one ORDER BY a;
  


    BEGIN TRANSACTION;
    SELECT a FROM one ORDER BY a;
  


    SELECT a FROM two ORDER BY a;
  


    SELECT a FROM one ORDER BY a;
  


    END TRANSACTION;
    SELECT a FROM two ORDER BY a;
  


    SELECT a FROM two ORDER BY a;
  


    SELECT a FROM one ORDER BY a;
  


    DROP TABLE one;
    DROP TABLE two;
  
