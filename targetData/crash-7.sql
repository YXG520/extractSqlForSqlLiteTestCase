

    ATTACH 'test2.db' AS aux;
    BEGIN;
    INSERT INTO abc VALUES(randstr(1500,1500), 0, 0);
    INSERT INTO abc2 VALUES(randstr(1500,1500), 0, 0);
    COMMIT;
  

