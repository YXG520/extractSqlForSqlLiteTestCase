

      BEGIN;
      INSERT INTO blobs(k, v, i) VALUES('a', 'different', 'connection');
    


      SELECT rowid FROM blobs ORDER BY rowid
    









      COMMIT;
    


      SELECT * FROM blobs WHERE rowid = 4;
    



      COMMIT;
    


      SELECT * FROM blobs WHERE rowid = 4;
    
