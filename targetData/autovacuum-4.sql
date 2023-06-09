

    PRAGMA auto_vacuum = 1;
    PRAGMA auto_vacuum;
  


    CREATE TABLE av1(a, b);
    BEGIN;
  
INSERT INTO av1 VALUES($i, '[string repeat X 200]');
INSERT INTO av1 VALUES(99, '[string repeat X 200]');

    SELECT sum(a) FROM av1;
  


    CREATE UNIQUE INDEX av1_i ON av1(a);
  


    SELECT sum(a) FROM av1;
  


    COMMIT;
  
