

    PRAGMA temp_store;
  




    PRAGMA temp_store=file;
    PRAGMA temp_store;
  




    PRAGMA temp_store=memory;
    PRAGMA temp_store;
  




    PRAGMA temp_store_directory;
  


      PRAGMA temp_store_directory='$pwd';
    

 
      PRAGMA temp_store_directory;
    

 
      PRAGMA temp_store_directory='/NON/EXISTENT/PATH/FOOBAR';
    

 
      PRAGMA temp_store_directory='';
    

 
          PRAGMA temp_store_directory;
          PRAGMA temp_store=FILE;
          CREATE TEMP TABLE temp_store_directory_test(a integer);
          INSERT INTO temp_store_directory_test values (2);
          SELECT * FROM temp_store_directory_test;
        


          PRAGMA temp_store_directory='$pwd';
          SELECT * FROM temp_store_directory_test;
        


    PRAGMA temp_store = 0;
    PRAGMA temp_store;
  


    PRAGMA temp_store = 1;
    PRAGMA temp_store;
  


    PRAGMA temp_store = 2;
    PRAGMA temp_store;
  


    PRAGMA temp_store = 3;
    PRAGMA temp_store;
  


    BEGIN EXCLUSIVE;
    CREATE TEMP TABLE temp_table(t);
    INSERT INTO temp_table VALUES('valuable data');
    PRAGMA temp_store = 1;
  


    SELECT * FROM temp_table;
    COMMIT;
  


    INSERT INTO temp_table VALUES('valuable data II');
    SELECT * FROM temp_table;
  

SELECT t FROM temp_table

      execsql {pragma temp_store = 1
