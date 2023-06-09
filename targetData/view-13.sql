

      ATTACH 'test2.db' AS two;
      CREATE TABLE two.t2(x,y);
      CREATE VIEW v13 AS SELECT y FROM two.t2;
    
