

    CREATE TABLE t1(
      x INTEGER CHECK(tointeger(x) IS NOT NULL)
    );
  


      INSERT INTO t1 (x) VALUES (NULL);
    


      INSERT INTO t1 (x) VALUES (NULL);
    


      INSERT INTO t1 (x) VALUES ('');
    


      INSERT INTO t1 (x) VALUES ('bad');
    


      INSERT INTO t1 (x) VALUES ('1234bad');
    


      INSERT INTO t1 (x) VALUES ('1234.56bad');
    


      INSERT INTO t1 (x) VALUES (1234);
    


      INSERT INTO t1 (x) VALUES (1234.56);
    


      INSERT INTO t1 (x) VALUES ('1234');
    


      INSERT INTO t1 (x) VALUES ('1234.56');
    


      INSERT INTO t1 (x) VALUES (ZEROBLOB(4));
    


      INSERT INTO t1 (x) VALUES (X'');
    


      INSERT INTO t1 (x) VALUES (X'1234');
    


      INSERT INTO t1 (x) VALUES (X'12345678');
    


      INSERT INTO t1 (x) VALUES ('1234.00');
    


      INSERT INTO t1 (x) VALUES (1234.00);
    


      INSERT INTO t1 (x) VALUES ('-9223372036854775809');
    


        INSERT INTO t1 (x) VALUES (9223372036854775808);
      


    SELECT x FROM t1 WHERE x>0 ORDER BY x;
  
