

  CREATE TABLE t1(q);
  CREATE VIEW vvv AS WITH x AS (WITH y AS (SELECT * FROM x) SELECT 1) SELECT 1;



  SELECT * FROM vvv;



  ALTER TABLE t1 RENAME TO t1x;



  ALTER TABLE t1x RENAME q TO x;
