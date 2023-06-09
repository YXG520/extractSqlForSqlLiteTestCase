

    SELECT collate2t1.b FROM collate2t1 JOIN collate2t2 USING (b);
  


    SELECT collate2t1.b FROM collate2t2 JOIN collate2t1 USING (b);
  


    SELECT collate2t1.b FROM collate2t1 NATURAL JOIN collate2t2;
  


    SELECT collate2t1.b FROM collate2t2 NATURAL JOIN collate2t1;
  


    SELECT collate2t2.b FROM collate2t1 LEFT JOIN collate2t2 USING (b) order by collate2t1.oid;
  


    SELECT collate2t2.b FROM collate2t2 RIGHT JOIN collate2t1 ON collate2t1.b=collate2t2.b
     ORDER BY collate2t1.oid;
  


    SELECT collate2t2.b FROM collate2t1 LEFT JOIN collate2t2 ON collate2t2.b=collate2t1.b
     ORDER BY collate2t1.oid;
  


    SELECT collate2t1.b, collate2t2.b FROM collate2t2 LEFT OUTER JOIN collate2t1 USING (b);
  


    SELECT collate2t1.b, collate2t2.b
      FROM collate2t1 RIGHT JOIN collate2t2 ON collate2t2.b=collate2t1.b
  
