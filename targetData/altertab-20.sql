

  CREATE TABLE a(a);
  CREATE VIEW b AS SELECT(SELECT *FROM c JOIN a USING(d, a, a, a) JOIN a) IN();



  ALTER TABLE a RENAME a TO e;

