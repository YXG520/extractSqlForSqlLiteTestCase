

    CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
      SELECT * FROM;  -- Syntax error
    END;
  


    CREATE TRIGGER r1 AFTER INSERT ON t1 BEGIN
      SELECT * FROM t1;
      SELECT * FROM;  -- Syntax error
    END;
  
