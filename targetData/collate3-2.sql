

    CREATE TABLE collate3t1(c1 COLLATE string_compare, c2);
  


    SELECT * FROM collate3t1 ORDER BY 1 COLLATE string_compare;
  


    SELECT * FROM collate3t1 ORDER BY c1;
  


    SELECT * FROM collate3t1 WHERE c1 = 'xxx';
  


    CREATE TABLE collate3t2(c1 COLLATE string_compare);
  


    CREATE INDEX collate3t1_i1 ON collate3t1(c1);
  


    SELECT * FROM collate3t1;
  


    SELECT count(*) FROM collate3t1 GROUP BY c1;
  


#     SELECT * FROM collate3t1 GROUP BY c1;
#   


    SELECT * FROM collate3t1 GROUP BY c1;
  


    SELECT DISTINCT c1 FROM collate3t1;
  


      SELECT c1 FROM collate3t1 UNION SELECT c1 FROM collate3t1;
    


      SELECT c1 FROM collate3t1 EXCEPT SELECT c1 FROM collate3t1;
    


      SELECT c1 FROM collate3t1 INTERSECT SELECT c1 FROM collate3t1;
    


      SELECT c1 FROM collate3t1 UNION ALL SELECT c1 FROM collate3t1;
    


      SELECT 10 UNION ALL SELECT 20 ORDER BY 1 COLLATE string_compare;
    


      SELECT 10 INTERSECT SELECT 20 ORDER BY 1 COLLATE string_compare;
    


      SELECT 10 EXCEPT SELECT 20 ORDER BY 1 COLLATE string_compare;
    


      SELECT 10 UNION SELECT 20 ORDER BY 1 COLLATE string_compare;
    


      SELECT c1 FROM collate3t1 UNION ALL SELECT c1 FROM collate3t1 ORDER BY 1;
    
