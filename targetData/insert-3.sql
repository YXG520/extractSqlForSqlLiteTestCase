

    DELETE FROM test2;
    CREATE INDEX index9 ON test2(f1,f2);
    CREATE INDEX indext ON test2(f4,f5);
    SELECT * from test2;
  

INSERT INTO test2(f2,f4) VALUES(-3.33,'hum')
SELECT * FROM test2 WHERE f1='111' AND f2=-3.33

INSERT INTO test2(f1,f2,f5) VALUES(22,-4.44,'wham')
SELECT * FROM test2 WHERE f1='111' AND f2=-3.33

SELECT * FROM test2 WHERE f1=22 AND f2=-4.44

