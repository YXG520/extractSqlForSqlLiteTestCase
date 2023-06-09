

  DROP TABLE t1;
  CREATE TABLE t1(id ANY PRIMARY KEY, a,b,c) WITHOUT ROWID;
  INSERT INTO t1(id,a,b,c)
  VALUES(1,'In_the_beginning_was_the_Word',1,1),
        (2,'and_the_Word_was_with_God',1,2),
        (3,'and_the_Word_was_God',1,3),
        (4,'The_same_was_in_the_beginning_with_God',2,1),
        (5,'All_things_were_made_by_him',3,1),
        (6,'and_without_him_was_not_any_thing_made_that_was_made',3,2);
  CREATE INDEX t1a1 ON t1(substr(a,1,12));



  SELECT b, c, '|' FROM t1 WHERE substr(a,1,12)=='and_the_Word' ORDER BY b, c;



  EXPLAIN QUERY PLAN
  SELECT b, c, '|' FROM t1 WHERE substr(a,1,12)=='and_the_Word' ORDER BY b, c;



  SELECT b, c, '|' FROM t1 WHERE 'and_the_Word'==substr(a,1,12) ORDER BY b, c;



  EXPLAIN QUERY PLAN
  SELECT b, c, '|' FROM t1 WHERE 'and_the_Word'==substr(a,1,12) ORDER BY b, c;



  CREATE INDEX t1ba ON t1(b,substr(a,2,3),c);
  SELECT c FROM t1 WHERE b=1 AND substr(a,2,3)='nd_' ORDER BY c;



  EXPLAIN QUERY PLAN
  SELECT c FROM t1 WHERE b=1 AND substr(a,2,3)='nd_' ORDER BY c;



  SELECT id, substr(a,b,3), '|' FROM t1 ORDER BY 2;



  CREATE INDEX t1abx ON t1(substr(a,b,3));
  SELECT id FROM t1 WHERE substr(a,b,3)<='and' ORDER BY +id;



  EXPLAIN QUERY PLAN
  SELECT id FROM t1 WHERE substr(a,b,3)<='and' ORDER BY +id;



  SELECT id FROM t1 WHERE +substr(a,b,3)<='and' ORDER BY +id;



  SELECT id FROM t1 WHERE substr(a,b,3) IN ('and','l_t','xyz')
   ORDER BY +id;



  EXPLAIN QUERY PLAN
  SELECT id FROM t1 WHERE substr(a,b,3) IN ('and','l_t','xyz')
   ORDER BY +id;



    ALTER TABLE t1 ADD COLUMN d;
    UPDATE t1 SET d=length(a);
    CREATE INDEX t1a2 ON t1(SUBSTR(a, 27, 3)) WHERE d>=29;
    SELECT id, b, c FROM t1
      WHERE substr(a,27,3)=='ord' AND d>=29;
  


    EXPLAIN QUERY PLAN
      SELECT id, b, c FROM t1
      WHERE substr(a,27,3)=='ord' AND d>=29;
  


  CREATE TABLE t1(a INT, b TEXT);
  INSERT INTO t1(a,b) VALUES
    (10, '{"one":5,"two":6


  EXPLAIN QUERY PLAN
  SELECT sum(b->>'one') FROM t1 WHERE a=10; /* Query AA */



  SELECT sum(b->>'one') FROM t1 WHERE a=10; /* Query AA */



  EXPLAIN QUERY PLAN
  SELECT sum(b->>'two') FROM t1 WHERE a=10; /* Query BB */



  SELECT sum(b->>'two') FROM t1 WHERE a=10; /* Query BB */



  DROP TABLE t1;
  CREATE TABLE t1(a INT, b TEXT, c INT, d INT);
  INSERT INTO t1(a,b,c,d) VALUES
    (1, '{"x":1


  SELECT a,
       SUM(1)                              AS t1,
       SUM(CASE WHEN b->>'x'=1 THEN 1 END) AS t2,
       SUM(c)                              AS t3,
       SUM(CASE WHEN b->>'x'=1 THEN c END) AS t4
    FROM t1;



  explain query plan
  SELECT a,
       SUM(1)                              AS t1,
       SUM(CASE WHEN b->>'x'=1 THEN 1 END) AS t2,
       SUM(c)                              AS t3,
       SUM(CASE WHEN b->>'x'=1 THEN c END) AS t4
    FROM t1;



  CREATE TABLE t1(a INTEGER PRIMARY KEY, b INT);
  INSERT INTO t1(a,b) VALUES(1,0);
  CREATE INDEX x1 ON t1( "y" );
  CREATE INDEX x2 ON t1( +"y" );
  CREATE INDEX x3 ON t1( +'y' );
  CREATE INDEX x4 ON t1( "y*" );



  UPDATE t1 SET b=100 WHERE (SELECT 'y') GLOB "y";
  SELECT b FROM t1;



  UPDATE t1 SET b=200 WHERE (SELECT 'y') GLOB +"y";
  SELECT b FROM t1;



  UPDATE t1 SET b=300 WHERE (SELECT 'y') GLOB +'y';
  SELECT b FROM t1;



  UPDATE t1 SET b=400 WHERE (SELECT 'y') GLOB "y*";
  SELECT b FROM t1;



  CREATE TABLE t1(id INTEGER PRIMARY KEY, tag INT);
  INSERT INTO t1 VALUES (0, 7), (1, 8);
  CREATE TABLE t2(type INT, t1_id  INT, value  INT);
  INSERT INTO t2 VALUES (0, 0, 100), (0, 1, 101);
  CREATE INDEX t1x ON t1(-tag);
  SELECT u.tag, v.max_value
    FROM (SELECT tag FROM t1 GROUP BY -tag) u
    JOIN (SELECT t1.tag AS "tag", t2.type AS "type",
                 MAX(t2.value) AS "max_value"
            FROM t1
                 JOIN t2 ON t2.t1_id = t1.id
           GROUP BY t2.type, t1.tag
         ) v ON v.type = 0 AND v.tag = u.tag;

