

    CREATE TABLE blobs(k PRIMARY KEY, v BLOB);
    INSERT INTO blobs VALUES('one', X'0102030405060708090A');
    INSERT INTO blobs VALUES('two', X'0A090807060504030201');
  







    SELECT v FROM blobs WHERE rowid = 1;
  


    INSERT INTO blobs(rowid, k, v) VALUES(3, 'three', $::str);
  




PRAGMA mmap_size = 0
PRAGMA auto_vacuum = $AutoVacuumMode
