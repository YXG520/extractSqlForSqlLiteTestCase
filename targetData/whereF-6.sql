

    CREATE TABLE t6(x);
    SELECT * FROM t6 WHERE 1 IN (SELECT value FROM json_each(x));
  


    DROP TABLE t6;
    CREATE TABLE t6(a,b,c);
    INSERT INTO t6 VALUES
     (0,null,'{"a":0,"b":[3,4,5],"c":{"x":4.5,"y":7.8


    DROP TABLE IF EXISTS t;
    CREATE TABLE t(json JSON);
    SELECT * FROM t
     WHERE(EXISTS(SELECT 1 FROM json_each(t.json,"$.foo") j
                   WHERE j.value = 'meep'));
  


    INSERT INTO t VALUES('{"xyzzy":null
