

    BEGIN;
    CREATE TABLE numbers(a PRIMARY KEY, b);
    INSERT INTO numbers(oid) VALUES(NULL);
    INSERT INTO numbers(oid) SELECT NULL FROM numbers;
    INSERT INTO numbers(oid) SELECT NULL FROM numbers;
    INSERT INTO numbers(oid) SELECT NULL FROM numbers;
    INSERT INTO numbers(oid) SELECT NULL FROM numbers;
    INSERT INTO numbers(oid) SELECT NULL FROM numbers;
    INSERT INTO numbers(oid) SELECT NULL FROM numbers;
    UPDATE numbers set a = oid, b = 'abcdefghijklmnopqrstuvwxyz0123456789';
    COMMIT;
  


    pragma read_uncommitted = 1;
  
SELECT count(*) FROM numbers
SELECT a FROM numbers ORDER BY oid

    if {$a==32

        BEGIN;
        DELETE FROM numbers;
      


    ROLLBACK;
  
SELECT count(*) FROM numbers
SELECT a, b FROM numbers ORDER BY a

    if {$a==32

        DELETE FROM numbers;
      
