

    PRAGMA auto_vacuum=OFF;
    PRAGMA page_size=1024;
    BEGIN;
    CREATE TABLE abc AS SELECT 1 AS a, 2 AS b, 3 AS c;
    CREATE TABLE def AS SELECT 1 AS d, 2 AS e, 3 AS f;
    COMMIT;
  


      [string repeat {SELECT random();
PRAGMA integrity_check
SELECT count(*), md5sum(a), md5sum(b), md5sum(c) FROM abc
