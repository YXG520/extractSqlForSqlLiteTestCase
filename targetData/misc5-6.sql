

      SELECT * FROM sqlite_master 
      UNION ALL 
      SELECT * FROM sqlite_master
      LIMIT (SELECT count(*) FROM blah);
    


      CREATE TABLE logs(msg TEXT, timestamp INTEGER, dbtime TEXT);
    

      SELECT * FROM logs WHERE logs.oid >= (SELECT head FROM logs_base) 
      UNION ALL 
      SELECT * FROM logs 
      LIMIT (SELECT lmt FROM logs_base) ;
    
