

    CREATE TABLE collate3t1(a);
    INSERT INTO collate3t1 VALUES(10);
    SELECT a FROM collate3t1 ORDER BY 1 COLLATE unk;
  



    SELECT a FROM collate3t1 ORDER BY 1 COLLATE unk;
  



    SELECT a FROM collate3t1 ORDER BY 1 COLLATE unk;
  



    SELECT a FROM collate3t1 ORDER BY 1 COLLATE unk;
  


    DROP TABLE collate3t1;
    CREATE TABLE collate3t1(a COLLATE unk);
  

    SELECT a FROM collate3t1 ORDER BY 1;
  


    SELECT a FROM collate3t1 ORDER BY 1;
  


    DROP TABLE collate3t1;
  
