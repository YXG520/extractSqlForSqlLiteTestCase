

    CREATE TABLE ta(a INTEGER PRIMARY KEY, b);
    INSERT INTO ta VALUES(1,1);
    INSERT INTO ta VALUES(2,2);
    INSERT INTO ta VALUES(3,3);
    INSERT INTO ta VALUES(4,4);
    INSERT INTO ta VALUES(6,6);
    INSERT INTO ta VALUES(8,8);
    INSERT INTO ta VALUES(10,
       'This is a key that is long enough to require a malloc in the VDBE');
    SELECT * FROM ta WHERE a<10;
  


    CREATE TABLE tb(a INTEGER PRIMARY KEY, b);
    INSERT INTO tb VALUES(1,1);
    INSERT INTO tb VALUES(2,2);
    INSERT INTO tb VALUES(3,3);
    INSERT INTO tb VALUES(5,5);
    INSERT INTO tb VALUES(7,7);
    INSERT INTO tb VALUES(9,9);
    INSERT INTO tb VALUES(11,
       'This is a key that is long enough to require a malloc in the VDBE');
    SELECT * FROM tb WHERE a<10;
  


    SELECT a FROM ta WHERE b IN (SELECT a FROM tb);
  


    SELECT a FROM ta WHERE b NOT IN (SELECT a FROM tb);
  


    SELECT a FROM ta WHERE b IN (SELECT b FROM tb);
  


    SELECT a FROM ta WHERE b NOT IN (SELECT b FROM tb);
  


    SELECT a FROM ta WHERE a IN (SELECT a FROM tb);
  


    SELECT a FROM ta WHERE a NOT IN (SELECT a FROM tb);
  


    SELECT a FROM ta WHERE a IN (SELECT b FROM tb);
  


    SELECT a FROM ta WHERE a NOT IN (SELECT b FROM tb);
  
