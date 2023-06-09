

    ATTACH 'test2.db' AS aux;
    BEGIN;
    CREATE TABLE aux.def(d, e, f);
    INSERT INTO abc VALUES(4, 5, 6);
    COMMIT;
  

