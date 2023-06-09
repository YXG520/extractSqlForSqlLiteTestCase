

    CREATE TABLE pp(a PRIMARY KEY, b) WITHOUT rowid;
    CREATE TABLE cc(c PRIMARY KEY, d REFERENCES pp) WITHOUT rowid;
  

$insert INTO cc VALUES(1, 2)

 SELECT * FROM cc 


      BEGIN;
        INSERT INTO pp VALUES(2, 'two');
        INSERT INTO cc VALUES(1, 2);
    
$insert INTO cc VALUES(3, 4)

 COMMIT ; SELECT * FROM cc 

 DELETE FROM cc ; DELETE FROM pp 


      INSERT INTO pp VALUES(2, 'two');
      INSERT INTO cc VALUES(1, 2);
    

$update pp SET a = 1

 SELECT * FROM pp 

$update cc SET d = 1

 SELECT * FROM cc 


      BEGIN;
        INSERT INTO pp VALUES(3, 'three');
    
$update pp SET a = 1 WHERE a = 2

 COMMIT ; SELECT * FROM pp 


      BEGIN;
        INSERT INTO cc VALUES(2, 2);
    
$update cc SET d = 1 WHERE c = 1

 COMMIT ; SELECT * FROM cc 

 DELETE FROM cc ; DELETE FROM pp 
