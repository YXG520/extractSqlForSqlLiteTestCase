

    CREATE TABLE FOO(bar integer);
    CREATE TRIGGER foo_insert BEFORE INSERT ON foo BEGIN
      SELECT CASE WHEN (NOT new.bar BETWEEN 0 AND 20)
             THEN raise(rollback, 'aiieee') END;
    END;
    INSERT INTO foo(bar) VALUES (1);
  


    INSERT INTO foo(bar) VALUES (111);
  
