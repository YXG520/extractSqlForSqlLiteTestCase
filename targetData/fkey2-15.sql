

    CREATE TABLE pp(a PRIMARY KEY, b);
    CREATE TABLE cc(x, y REFERENCES pp DEFERRABLE INITIALLY DEFERRED);
    INSERT INTO pp VALUES(1, 'one');
    INSERT INTO pp VALUES(2, 'two');
    INSERT INTO cc VALUES('neung', 1);
    INSERT INTO cc VALUES('song', 2);
  

 INSERT INTO pp VALUES(3, 'three') 


    BEGIN;
      INSERT INTO cc VALUES('see', 4);    -- Violates deferred constraint
  
 INSERT INTO pp VALUES(5, 'five') 

 DELETE FROM cc WHERE x = 'see' 
 INSERT INTO pp VALUES(6, 'six') 



    DELETE FROM cc WHERE x = 'neung';
    ROLLBACK;
  

 
    BEGIN;
    DELETE FROM pp WHERE a = 2;
  

    DELETE FROM cc WHERE x = 'neung';
    ROLLBACK;
  
