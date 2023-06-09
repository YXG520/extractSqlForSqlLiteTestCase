

    PRAGMA schema_version = 105;
  


    PRAGMA schema_version;
  


  PRAGMA schema_version = 106;
  PRAGMA schema_version;



  PRAGMA schema_version = 106;
  PRAGMA schema_version;



    CREATE TABLE t4(a, b, c);
    INSERT INTO t4 VALUES(1, 2, 3);
    SELECT * FROM t4;
  


    PRAGMA schema_version;
  


    SELECT * FROM t4;
  


    PRAGMA schema_version = 108;
  

SELECT * FROM t4



      ATTACH 'test2.db' AS aux;
      CREATE TABLE aux.t1(a, b, c);
      PRAGMA aux.schema_version = 205;
    


      PRAGMA aux.schema_version;
    


    PRAGMA schema_version;
  


      ATTACH 'test2.db' AS aux;
      SELECT * FROM aux.t1;
    


      PRAGMA aux.schema_version = 206;
    

SELECT * FROM aux.t1




    PRAGMA user_version;
  


    PRAGMA user_version = 2;
  


    PRAGMA user_version;
  


    PRAGMA user_version;
  


    PRAGMA schema_version;
  


      VACUUM;
      PRAGMA user_version;
    


      PRAGMA schema_version;
    
ATTACH 'test2.db' AS aux


      PRAGMA aux.user_version;
    


      PRAGMA aux.user_version = 3;
    


      PRAGMA aux.user_version;
    


      PRAGMA main.user_version;
    


      BEGIN;
      PRAGMA aux.user_version = 10;
      PRAGMA user_version = 11;
    


      PRAGMA aux.user_version;
    


      PRAGMA main.user_version;
    


      ROLLBACK;
      PRAGMA aux.user_version;
    


      PRAGMA main.user_version;
    


    PRAGMA user_version = -450;
  


    PRAGMA user_version;
  

    PRAGMA temp.cache_size = 1;
    CREATE TEMP TABLE IF NOT EXISTS a(b);
    DELETE FROM a;
    INSERT INTO a VALUES(randomblob(1000));
    INSERT INTO a SELECT * FROM a;
    INSERT INTO a SELECT * FROM a;
    INSERT INTO a SELECT * FROM a;
    INSERT INTO a SELECT * FROM a;
    INSERT INTO a SELECT * FROM a;
    INSERT INTO a SELECT * FROM a;
    INSERT INTO a SELECT * FROM a;
    INSERT INTO a SELECT * FROM a;
  
PRAGMA database_list

    if {$name=="temp"


    PRAGMA application_id;
  

PRAGMA Application_ID(12345); PRAGMA application_id;
