

    CREATE TABLE collate5t2(a COLLATE text, b COLLATE nocase);

    INSERT INTO collate5t2 VALUES('a', 'apple');
    INSERT INTO collate5t2 VALUES('A', 'apple');
    INSERT INTO collate5t2 VALUES('b', 'banana');
    INSERT INTO collate5t2 VALUES('B', 'Banana');
  


    SELECT a FROM collate5t1 UNION select a FROM collate5t2;
  


    SELECT a FROM collate5t2 UNION select a FROM collate5t1;
  


    SELECT a, b FROM collate5t1 UNION select a, b FROM collate5t2;
  


    SELECT a, b FROM collate5t2 UNION select a, b FROM collate5t1;
  


    SELECT a FROM collate5t1 EXCEPT select a FROM collate5t2;
  


    SELECT a FROM collate5t2 EXCEPT select a FROM collate5t1 WHERE a != 'a';
  


    SELECT a, b FROM collate5t1 EXCEPT select a, b FROM collate5t2;
  


    SELECT a, b FROM collate5t2 EXCEPT select a, b FROM collate5t1 
      where a != 'a';
  


    SELECT a FROM collate5t1 INTERSECT select a FROM collate5t2;
  


    SELECT a FROM collate5t2 INTERSECT select a FROM collate5t1 WHERE a != 'a';
  


    SELECT a, b FROM collate5t1 INTERSECT select a, b FROM collate5t2;
  


    SELECT a, b FROM collate5t2 INTERSECT select a, b FROM collate5t1;
  


    BEGIN;
    CREATE TABLE collate5t3(a, b);
  
INSERT INTO collate5t3 VALUES($ii, '[string repeat a $ii]');

    COMMIT;
    SELECT * FROM collate5t3 UNION SELECT * FROM collate5t3;
  

DROP TABLE collate5t3;
