

    CREATE INDEX collate3t1_i1 ON collate3t1(c1);
    INSERT INTO collate3t1 VALUES('xxx', 'yyy');
  
select * from collate3t1


    INSERT INTO collate3t1 VALUES('xxx', 0);
  


    UPDATE collate3t1 SET c1 = 'xxx';
  


    UPDATE collate3t1 SET c2 = 'xxx';
  


    DELETE FROM collate3t1 WHERE 1;
  


    SELECT * FROM collate3t1;
  


    DELETE FROM collate3t1;
  


      PRAGMA integrity_check
    


    SELECT * FROM collate3t1;
  


    SELECT * FROM collate3t1 ORDER BY 1 COLLATE string_compare;
  


    SELECT * FROM collate3t1 ORDER BY c1;
  


    SELECT * FROM collate3t1 WHERE c1 = 'xxx';
  


    CREATE TABLE collate3t2(c1 COLLATE string_compare);
  


    CREATE INDEX collate3t1_i2 ON collate3t1(c1);
  


    DROP TABLE collate3t1;
  
