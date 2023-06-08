INSERT INTO abc VALUES(1, 2, 3);

BEGIN;
  INSERT INTO abc VALUES(1, 2, 3);
  INSERT INTO abc VALUES(4, 5, 6);
  ROLLBACK;

BEGIN;
  INSERT INTO abc VALUES(1, 2, 3);
  INSERT INTO abc VALUES(4, 5, randstr(1500,1500));
  COMMIT;

ATTACH 'test2.db' AS aux;
    BEGIN;
    CREATE TABLE aux.def(d, e, f);
    INSERT INTO abc VALUES(4, 5, 6);
    COMMIT;
  

