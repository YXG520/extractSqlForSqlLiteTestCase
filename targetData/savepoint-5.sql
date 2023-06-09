

      CREATE TABLE blobs(x);
      INSERT INTO blobs VALUES('a twentyeight character blob');
    
SAVEPOINT abc

SAVEPOINT abc

RELEASE abc
RELEASE abc

SAVEPOINT abc
ROLLBACK TO def

SAVEPOINT def

ROLLBACK TO def


RELEASE def

savepoint def
release def

release abc


      SAVEPOINT main;
      INSERT INTO blobs VALUES('another blob');
    

 BEGIN ; SELECT count(*) FROM blobs 

RELEASE main
0 {

}


 RELEASE main 

 RELEASE main 

 SELECT x FROM blobs WHERE rowid = 2 

 SELECT count(*) FROM blobs 
