

      CREATE TABLE abc2(a, b, c);
      INSERT INTO abc2 VALUES(1, 2, 10);
      INSERT INTO abc2 VALUES(3, 4, NULL);
      INSERT INTO abc2 VALUES(5, 6, NULL);
      CREATE VIEW abc2_v AS SELECT * FROM abc2;
      SELECT * FROM abc2_v;
    


      SELECT * FROM abc2_v;
    


      DROP TABLE abc2;
      DROP VIEW abc2_v;
    
