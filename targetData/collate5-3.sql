

    SELECT a FROM collate5t1 UNION ALL SELECT a FROM collate5t2 ORDER BY 1;
  


    SELECT a FROM collate5t2 UNION ALL SELECT a FROM collate5t1 ORDER BY 1;
  


    SELECT a FROM collate5t1 UNION ALL SELECT a FROM collate5t2 
      ORDER BY 1 COLLATE TEXT;
  


    CREATE TABLE collate5t_cn(a COLLATE NUMERIC);
    CREATE TABLE collate5t_ct(a COLLATE TEXT);
    INSERT INTO collate5t_cn VALUES('1');
    INSERT INTO collate5t_cn VALUES('11');
    INSERT INTO collate5t_cn VALUES('101');
    INSERT INTO collate5t_ct SELECT * FROM collate5t_cn;
  


    SELECT a FROM collate5t_cn INTERSECT SELECT a FROM collate5t_ct ORDER BY 1;
  


    SELECT a FROM collate5t_ct INTERSECT SELECT a FROM collate5t_cn ORDER BY 1;
  


    DROP TABLE collate5t_cn;
    DROP TABLE collate5t_ct;
    DROP TABLE collate5t1;
    DROP TABLE collate5t2;
  
