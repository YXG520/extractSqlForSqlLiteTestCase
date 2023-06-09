
 
    SELECT * FROM sqlite_master WHERE rowid>10; 
    SELECT * FROM sqlite_master WHERE rowid=10;
    SELECT * FROM sqlite_master WHERE rowid<10;
    SELECT * FROM sqlite_master WHERE rowid<=10;
    SELECT * FROM sqlite_master WHERE rowid>=10;
    SELECT * FROM sqlite_master;
  

 
    SELECT 10 IN (SELECT rowid FROM sqlite_master);
  
