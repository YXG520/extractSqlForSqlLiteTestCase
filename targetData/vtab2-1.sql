

    CREATE VIRTUAL TABLE schema USING schema;
    SELECT * FROM schema;
  


    SELECT length(tablename) FROM schema GROUP by tablename;
  


    SELECT tablename FROM schema GROUP by length(tablename);
  


    SELECT length(tablename) FROM schema GROUP by length(tablename);
  
