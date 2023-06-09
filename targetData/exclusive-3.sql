


      PRAGMA locking_mode = exclusive;
      BEGIN;
      DELETE FROM abc;
    


      COMMIT;
    


      INSERT INTO abc VALUES('A', 'B', 'C');
      SELECT * FROM abc;
    


      BEGIN;
      UPDATE abc SET a = 1, b = 2, c = 3;
      ROLLBACK;
      SELECT * FROM abc;
    



      PRAGMA locking_mode = normal;
      SELECT * FROM abc;
    
SELECT count(*), md5sum(x) FROM t3
