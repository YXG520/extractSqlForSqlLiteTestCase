

    PRAGMA short_column_names=OFF;
    PRAGMA full_column_names=ON;
    CREATE VIEW v5 AS SELECT tabC.a, txyZ.x, *
      FROM tabc, txyz ORDER BY 1 LIMIT 1;
    CREATE VIEW v6 AS SELECT tabC.a, txyZ.x, tboTh.a, tbotH.x, * 
      FROM tabc, txyz, tboth ORDER BY 1 LIMIT 1;
  

    SELECT * FROM tabc;
  


    SELECT Tabc.a, tAbc.b, taBc.c FROM tabc
  


    SELECT +tabc.a, -tabc.b, tabc.c FROM tabc
  


    SELECT +tabc.a AS AAA, -tabc.b AS BBB, tabc.c CCC FROM tabc
  


    SELECT Tabc.a, Txyz.x, * FROM tabc, txyz;
  


    SELECT tabc.*, txyz.* FROM tabc, txyz;
  


    SELECT * FROM tabc, txyz, tboth;
  


    SELECT * FROM v1 ORDER BY 2;
  


    SELECT * FROM v2 ORDER BY 2;
  


    SELECT * FROM v3 ORDER BY 2;
  


    SELECT * FROM v4 ORDER BY 2;
  


    SELECT * FROM v5 ORDER BY 2;
  


    SELECT * FROM v6 ORDER BY 2;
  
