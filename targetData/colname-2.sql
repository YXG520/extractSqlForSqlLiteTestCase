

    CREATE TABLE tabc(a,b,c);
    INSERT INTO tabc VALUES(1,2,3);
    CREATE TABLE txyz(x,y,z);
    INSERT INTO txyz VALUES(4,5,6);
    CREATE TABLE tboth(a,b,c,x,y,z);
    INSERT INTO tboth VALUES(11,12,13,14,15,16);
    CREATE VIEW v1 AS SELECT tabC.a, txyZ.x, * 
      FROM tabc, txyz ORDER BY 1 LIMIT 1;
    CREATE VIEW v2 AS SELECT tabC.a, txyZ.x, tboTh.a, tbotH.x, *
      FROM tabc, txyz, tboth ORDER BY 1 LIMIT 1;
  

    SELECT * FROM tabc;
  


    SELECT Tabc.a, tAbc.b, taBc.c, * FROM tabc
  


    SELECT +tabc.a, -tabc.b, tabc.c, * FROM tabc
  


    SELECT +tabc.a AS AAA, -tabc.b AS BBB, tabc.c CCC, * FROM tabc
  


    SELECT tabc.a, txyz.x, * FROM tabc, txyz;
  


    SELECT tabc.a, txyz.x, tabc.*, txyz.* FROM tabc, txyz;
  


    SELECT tabc.a, txyz.x, tboth.a, tboth.x, * FROM tabc, txyz, tboth;
  


    SELECT * FROM v1 ORDER BY 2;
  


    SELECT * FROM v2 ORDER BY 2;
  
