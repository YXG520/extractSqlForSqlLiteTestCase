

      ATTACH 'test2.db' AS aux;
      PRAGMA aux.default_cache_size = 10;
      CREATE TABLE aux.abc2 AS SELECT 2*a as a, 2*b as b, 2*c as c FROM abc;
    


         ATTACH 'test2.db' AS aux;
         BEGIN;
         SELECT randstr($i,$i) FROM abc LIMIT $i;
         INSERT INTO abc VALUES(randstr(10,10), 0, 0);
         DELETE FROM abc WHERE random()%10!=0;
         INSERT INTO abc2 VALUES(randstr(10,10), 0, 0);
         DELETE FROM abc2 WHERE random()%10!=0;
         COMMIT;
       




         ATTACH 'test2.db' AS aux;
         BEGIN;
         SELECT randstr($i,$i) FROM abc LIMIT $i;
         INSERT INTO abc VALUES(randstr(10,10), 0, 0);
         DELETE FROM abc WHERE random()%10!=0;
         INSERT INTO abc2 VALUES(randstr(10,10), 0, 0);
         DELETE FROM abc2 WHERE random()%10!=0;
         COMMIT;
       




         ATTACH 'test2.db' AS aux;
         BEGIN;
         SELECT random() FROM abc LIMIT $i;
         INSERT INTO abc VALUES(randstr(10,10), 0, 0);
         DELETE FROM abc WHERE random()%10!=0;
         INSERT INTO abc2 VALUES(randstr(10,10), 0, 0);
         DELETE FROM abc2 WHERE random()%10!=0;
         COMMIT;
       


