

    BEGIN;
    UPDATE one SET a = 0 WHERE 0;
    SELECT a FROM one ORDER BY a;
  


    SELECT a FROM two ORDER BY a;
  


    SELECT a FROM one ORDER BY a;
  


    INSERT INTO one VALUES(4,'four');
  


    SELECT a FROM two ORDER BY a;
  


    SELECT a FROM one ORDER BY a;
  


    INSERT INTO two VALUES(4,'IV');
  


    SELECT a FROM two ORDER BY a;
  


    SELECT a FROM one ORDER BY a;
  

END TRANSACTION


    SELECT a FROM two ORDER BY a;
  


    SELECT a FROM one ORDER BY a;
  


    SELECT a FROM two ORDER BY a;
  


    SELECT a FROM one ORDER BY a;
  
