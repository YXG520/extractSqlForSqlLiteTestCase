
SELECT * FROM v5; -- warm up the cache

   DELETE FROM v5 WHERE x=5;
   UPDATE v5 SET b=b+9900000 WHERE x BETWEEN 3 AND 5;

