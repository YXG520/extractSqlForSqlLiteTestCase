

    CREATE TABLE collate3t1(a, b);
    INSERT INTO collate3t1 VALUES('hello', NULL);
    CREATE INDEX collate3i1 ON collate3t1(a COLLATE user_defined);
  


    SELECT * FROM collate3t1 ORDER BY a COLLATE user_defined;
  


    SELECT * FROM collate3t1 ORDER BY a COLLATE user_defined;
  



    DROP TABLE collate3t1;
  


    CREATE TABLE collate3t1(a, b);
    INSERT INTO collate3t1 VALUES('2', NULL);
    INSERT INTO collate3t1 VALUES('101', NULL);
    INSERT INTO collate3t1 VALUES('12', NULL);
    CREATE VIEW collate3v1 AS SELECT * FROM collate3t1 
        ORDER BY 1 COLLATE user_defined;
    SELECT * FROM collate3v1;
  


    SELECT * FROM collate3v1;
  


    SELECT * FROM collate3v1;
  


    DROP TABLE collate3t1;
  
