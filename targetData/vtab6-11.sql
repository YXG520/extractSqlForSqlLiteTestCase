

    CREATE TABLE ab_r(a, b);
    CREATE TABLE bc_r(b, c);

    CREATE VIRTUAL TABLE ab USING echo(ab_r); 
    CREATE VIRTUAL TABLE bc USING echo(bc_r); 

    INSERT INTO ab VALUES(1, 2);
    INSERT INTO bc VALUES(2, 3);
  


    SELECT a, b, c FROM ab NATURAL JOIN bc;
  


    SELECT a, b, c FROM bc NATURAL JOIN ab;
  


    SELECT a, b, c FROM ab NATURAL JOIN bc;
  


    SELECT a, b, c FROM bc NATURAL JOIN ab;
  


    CREATE INDEX ab_i ON ab_r(b);
    CREATE INDEX bc_i ON bc_r(b);
  


    SELECT a, b, c FROM ab NATURAL JOIN bc;
  


    SELECT a, b, c FROM bc NATURAL JOIN ab;
  


    SELECT a, b, c FROM ab NATURAL JOIN bc;
  


    SELECT a, b, c FROM bc NATURAL JOIN ab;
  


    SELECT a, b, c FROM ab NATURAL JOIN bc;
  


    SELECT a, b, c FROM bc NATURAL JOIN ab;
  


    SELECT a, b, c FROM ab NATURAL JOIN bc;
  


    SELECT a, b, c FROM bc NATURAL JOIN ab;
  


    SELECT a, b, c FROM ab NATURAL JOIN bc;
  


    SELECT a, b, c FROM bc NATURAL JOIN ab;
  
