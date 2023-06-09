
 PRAGMA integrity_check 

 
      ATTACH 'testerr.db' AS 'aux';
      PRAGMA integrity_check;
    

 PRAGMA main.integrity_check; 

 PRAGMA aux.integrity_check; 

 
      ATTACH 'test.db' AS 'aux';
      PRAGMA integrity_check;
    

 PRAGMA main.integrity_check; 

 PRAGMA aux.integrity_check; 
