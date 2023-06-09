

    CREATE TABLE t0(c0);
    INSERT INTO t0(c0) VALUES(123);
    CREATE VIEW v0(c0) AS SELECT 0 GROUP BY 1;
    SELECT t0.c0, v0.c0, vt0.name
     FROM v0, t0 LEFT JOIN pragma_table_info('t0') AS vt0
       ON vt0.name LIKE 'c0'
     WHERE v0.c0 == 0;
  


    CREATE TABLE a(value TEXT);
    INSERT INTO a(value) SELECT value FROM json_each('["a", "b", null]');
    CREATE TABLE b(value TEXT);
    INSERT INTO b(value) SELECT value FROM json_each('["a", "c", null]');
    SELECT a.value, b.value FROM a RIGHT JOIN b ON a.value = b.value;
  


    SELECT a.value, b.value FROM b LEFT JOIN a ON a.value = b.value;
  


    SELECT a.value, b.value 
      FROM json_each('["a", "c", null]') AS b
           LEFT JOIN
           json_each('["a", "b", null]') AS a ON a.value = b.value;
  


    SELECT a.value, b.value 
      FROM json_each('["a", "b", null]') AS a
           RIGHT JOIN
           json_each('["a", "c", null]') AS b ON a.value = b.value;
  


    SELECT a.value, b.value 
      FROM json_each('["a", "b", null]') AS a
           RIGHT JOIN
           b ON a.value = b.value;
  


    SELECT a.value, b.value 
      FROM a
           RIGHT JOIN
           json_each('["a", "c", null]') AS b ON a.value = b.value;
  
