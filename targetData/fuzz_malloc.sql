

BEGIN;
    CREATE TABLE abc(a, b, c);
    CREATE TABLE def(a, b, c);
    CREATE TABLE ghi(a, b, c);
    INSERT INTO abc VALUES(1.5, 3, 'a short string');
    INSERT INTO def VALUES(NULL, X'ABCDEF', 
        'a longer string. Long enough that it doesn''t fit in Mem.zShort');
    INSERT INTO ghi VALUES(zeroblob(1000), 'hello world', -1257900987654321);
  COMMIT;

