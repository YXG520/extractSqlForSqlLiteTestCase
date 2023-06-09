
BEGIN;
DELETE FROM abc;
INSERT INTO abc VALUES($i, $i, '[string repeat X 100]');
COMMIT;
SELECT * FROM abc

PRAGMA cache_size=1
SELECT * FROM abc


    SELECT count(*), sum(a), sum(b) FROM abc;
  
