CREATE TABLE blobs (k INTEGER PRIMARY KEY, v BLOB);
    PRAGMA cache_size = 100;
  
SELECT length(v) FROM blobs WHERE k = $::iKey;
    
SELECT length(v) FROM blobs WHERE k = $::iKey; 
SELECT v FROM blobs WHERE k = $::iKey
