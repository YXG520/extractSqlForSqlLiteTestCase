

    CREATE TABLE t3(a TEXT, b TEXT);
    CREATE VIEW v3 AS SELECT t3.a FROM t3;
    CREATE TRIGGER trig1 INSTEAD OF DELETE ON v3 BEGIN
      SELECT 1;
    END;
    DELETE FROM v3 WHERE a = 1;
  
