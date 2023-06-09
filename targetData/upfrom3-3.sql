

      CREATE TABLE g1(a, b, c, PRIMARY KEY(a, b)) %WO%;
      INSERT INTO g1 VALUES(1, 1, 1);

      ATTACH 'test.db2' AS aux;
      CREATE TABLE aux.g1(a, b, c, PRIMARY KEY(a, b)) %WO%;
      INSERT INTO aux.g1 VALUES(10, 1, 10);
      INSERT INTO aux.g1 VALUES(20, 2, 20);
      INSERT INTO aux.g1 VALUES(30, 3, 30);
    


      UPDATE aux.g1 SET c=101 FROM main.g1;
    


      SELECT * FROM aux.g1;
    


      UPDATE g1 SET c=101 FROM g1 AS g2;
    


      SELECT * FROM g1;
    
