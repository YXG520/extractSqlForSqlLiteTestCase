

    SELECT a FROM collate2t1 WHERE NOT a > 'aa' ORDER BY 1;
  


    SELECT b FROM collate2t1 WHERE NOT b > 'aa' ORDER BY 1, oid;
  


    SELECT c FROM collate2t1 WHERE NOT c > 'aa' ORDER BY 1;
  


    SELECT a FROM collate2t1 WHERE NOT a < 'aa' ORDER BY 1;
  


    SELECT b FROM collate2t1 WHERE NOT b < 'aa' ORDER BY 1, oid;
  


    SELECT c FROM collate2t1 WHERE NOT c < 'aa' ORDER BY 1;
  


    SELECT a FROM collate2t1 WHERE NOT a = 'aa';
  


    SELECT b FROM collate2t1 WHERE NOT b = 'aa';
  


    SELECT c FROM collate2t1 WHERE NOT c = 'aa';
  


    SELECT a FROM collate2t1 WHERE NOT a >= 'aa' ORDER BY 1;
  


    SELECT b FROM collate2t1 WHERE NOT b >= 'aa' ORDER BY 1, oid;
  


    SELECT c FROM collate2t1 WHERE NOT c >= 'aa' ORDER BY 1;
  


    SELECT a FROM collate2t1 WHERE NOT a <= 'aa' ORDER BY 1;
  


    SELECT b FROM collate2t1 WHERE NOT b <= 'aa' ORDER BY 1, oid;
  


    SELECT c FROM collate2t1 WHERE NOT c <= 'aa' ORDER BY 1;
  


    SELECT a FROM collate2t1 WHERE a NOT BETWEEN 'Aa' AND 'Bb' ORDER BY 1;
  


    SELECT b FROM collate2t1 WHERE b NOT BETWEEN 'Aa' AND 'Bb' ORDER BY 1, oid;
  


    SELECT c FROM collate2t1 WHERE c NOT BETWEEN 'Aa' AND 'Bb' ORDER BY 1;
  


    SELECT a FROM collate2t1 WHERE NOT CASE a WHEN 'aa' THEN 1 ELSE 0 END;
  


    SELECT b FROM collate2t1 WHERE NOT CASE b WHEN 'aa' THEN 1 ELSE 0 END;
  


    SELECT c FROM collate2t1 WHERE NOT CASE c WHEN 'aa' THEN 1 ELSE 0 END;
  


      SELECT a FROM collate2t1 WHERE NOT a IN ('aa', 'bb');
    


      SELECT b FROM collate2t1 WHERE NOT b IN ('aa', 'bb');
    


      SELECT c FROM collate2t1 WHERE NOT c IN ('aa', 'bb');
    


      SELECT a FROM collate2t1 
        WHERE NOT a IN (SELECT a FROM collate2t1 WHERE a IN ('aa', 'bb'));
    


      SELECT b FROM collate2t1 
        WHERE NOT b IN (SELECT a FROM collate2t1 WHERE a IN ('aa', 'bb'));
    


      SELECT c FROM collate2t1 
        WHERE NOT c IN (SELECT a FROM collate2t1 WHERE a IN ('aa', 'bb'));
    
