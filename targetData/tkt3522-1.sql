

    CREATE TABLE tab4(
       col0 INTEGER,
       col1 INTEGER,
       col2 INTEGER,
       col3 INTEGER,
       col4 INTEGER
    );
    SELECT cor1.*
      FROM tab4 AS cor0
      JOIN tab4 AS cor1 USING ( col4, col3, col2, col1, col0 );
  


    CREATE TABLE tab1(col0 INTEGER);
    CREATE TABLE tab2(col0 INTEGER);
    SELECT cor0.* FROM tab1 NATURAL JOIN tab2 AS cor0;
  
