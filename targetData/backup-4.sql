




 
    ATTACH 'test3.db' AS aux1;
    CREATE TABLE aux1.t1(a, b);
  
 
    ATTACH 'test4.db' AS aux2;
    CREATE TABLE aux2.t2(a, b);
  

 DETACH aux2 

B

B




B

B



    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
  

    PRAGMA page_size = 4096;
    CREATE TABLE t2(a, b);
    INSERT INTO t2 VALUES(3, 4);
  

B

B
