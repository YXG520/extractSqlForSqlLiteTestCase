

  CREATE TABLE r(a PRIMARY KEY, b, c);
  CREATE VIRTUAL TABLE e USING echo(r);



    BEGIN;
      CREATE TABLE xyz(x);
      SELECT a FROM e;
    COMMIT;
  
