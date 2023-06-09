

    CREATE TABLE q(s string, id string, constraint pk_q primary key(id));
    BEGIN;
    INSERT INTO q(s,id) VALUES('hello','id.1');
    INSERT INTO q(s,id) VALUES('goodbye','id.2');
    INSERT INTO q(s,id) VALUES('again','id.3');
    END;
    SELECT * FROM q;
  


    SELECT * FROM q WHERE id='id.1';
  

SELECT * FROM q


    DELETE FROM q WHERE rowid=1
  


    SELECT * FROM q;
  


    DELETE FROM q WHERE rowid=1
  


    SELECT * FROM q;
  
