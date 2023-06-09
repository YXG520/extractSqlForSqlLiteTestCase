

    SAVEPOINT one;
    ATTACH 'test2.db' AS aux;
    DETACH aux;
  


    RELEASE one;
    ATTACH 'test2.db' AS aux;
  

    SAVEPOINT one;
    DETACH aux;
    ATTACH 'test2.db' AS aux;
  


    RELEASE one;
    DETACH aux;
  
PRAGMA lock_status


      ATTACH 'test2.db' AS aux1;
      ATTACH 'test3.db' AS aux2;
      DROP TABLE t1;
      CREATE TABLE main.t1(x, y);
      CREATE TABLE aux1.t2(x, y);
      CREATE TABLE aux2.t3(x, y);
      SELECT name FROM sqlite_master;
      SELECT name FROM aux1.sqlite_master;
      SELECT name FROM aux2.sqlite_master;
    

 PRAGMA lock_status 


      SAVEPOINT one;
      INSERT INTO t1 VALUES(1, 2);
      PRAGMA lock_status;
    


      INSERT INTO t3 VALUES(3, 4);
      PRAGMA lock_status;
    


      SAVEPOINT two;
      INSERT INTO t2 VALUES(5, 6);
      PRAGMA lock_status;
    

 SELECT * FROM t2 

 ROLLBACK TO two 
 SELECT * FROM t2 

 PRAGMA lock_status 

 SELECT 'a', * FROM t1 ; SELECT 'b', * FROM t3 


      INSERT INTO t2 VALUES(5, 6);
      RELEASE one;
    
 
      SELECT * FROM t1;
      SELECT * FROM t2;
      SELECT * FROM t3;
    

 PRAGMA lock_status 

 
      SAVEPOINT one;
        INSERT INTO t1 VALUES('a', 'b');
        SAVEPOINT two;
          INSERT INTO t2 VALUES('c', 'd');
          SAVEPOINT three;
            INSERT INTO t3 VALUES('e', 'f');
    
 
      SELECT * FROM t1;
      SELECT * FROM t2;
      SELECT * FROM t3;
    

 ROLLBACK TO two 
 
      SELECT * FROM t1;
      SELECT * FROM t2;
      SELECT * FROM t3;
    

 
      INSERT INTO t3 VALUES('g', 'h');
      ROLLBACK TO two;
    
 
      SELECT * FROM t1;
      SELECT * FROM t2;
      SELECT * FROM t3;
    

 ROLLBACK 
 
      SELECT * FROM t1;
      SELECT * FROM t2;
      SELECT * FROM t3;
    

 PRAGMA lock_status 
