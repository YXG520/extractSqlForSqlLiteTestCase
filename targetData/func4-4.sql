

      CREATE TABLE t2(
        x REAL CHECK(toreal(x) IS NOT NULL)
      );
    


        INSERT INTO t2 (x) VALUES (NULL);
      


        INSERT INTO t2 (x) VALUES (NULL);
      


        INSERT INTO t2 (x) VALUES ('');
      


        INSERT INTO t2 (x) VALUES ('bad');
      


        INSERT INTO t2 (x) VALUES ('1234bad');
      


        INSERT INTO t2 (x) VALUES ('1234.56bad');
      


        INSERT INTO t2 (x) VALUES (1234);
      


        INSERT INTO t2 (x) VALUES (1234.56);
      


        INSERT INTO t2 (x) VALUES ('1234');
      


        INSERT INTO t2 (x) VALUES ('1234.56');
      


        INSERT INTO t2 (x) VALUES (ZEROBLOB(4));
      


        INSERT INTO t2 (x) VALUES (X'');
      


        INSERT INTO t2 (x) VALUES (X'1234');
      


        INSERT INTO t2 (x) VALUES (X'12345678');
      


      SELECT x FROM t2 ORDER BY x;
    
