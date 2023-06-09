

    SELECT a > 'aa' FROM collate2t1;
  


    SELECT b > 'aa' FROM collate2t1;
  


    SELECT c > 'aa' FROM collate2t1;
  


    SELECT a < 'aa' FROM collate2t1;
  


    SELECT b < 'aa' FROM collate2t1;
  


    SELECT c < 'aa' FROM collate2t1;
  


    SELECT a = 'aa' FROM collate2t1;
  


    SELECT b = 'aa' FROM collate2t1;
  


    SELECT c = 'aa' FROM collate2t1;
  


    SELECT a <= 'aa' FROM collate2t1;
  


    SELECT b <= 'aa' FROM collate2t1;
  


    SELECT c <= 'aa' FROM collate2t1;
  


    SELECT a >= 'aa' FROM collate2t1;
  


    SELECT b >= 'aa' FROM collate2t1;
  


    SELECT c >= 'aa' FROM collate2t1;
  


    SELECT a BETWEEN 'Aa' AND 'Bb' FROM collate2t1;
  


    SELECT b BETWEEN 'Aa' AND 'Bb' FROM collate2t1;
  


    SELECT c BETWEEN 'Aa' AND 'Bb' FROM collate2t1;
  


    SELECT CASE a WHEN 'aa' THEN 1 ELSE 0 END FROM collate2t1;
  


    SELECT CASE b WHEN 'aa' THEN 1 ELSE 0 END FROM collate2t1;
  


    SELECT CASE c WHEN 'aa' THEN 1 ELSE 0 END FROM collate2t1;
  


      SELECT a IN ('aa', 'bb') FROM collate2t1;
    


      SELECT b IN ('aa', 'bb') FROM collate2t1;
    


      SELECT c IN ('aa', 'bb') FROM collate2t1;
    


      SELECT a IN (SELECT a FROM collate2t1 WHERE a IN ('aa', 'bb')) 
        FROM collate2t1;
    


      SELECT b IN (SELECT a FROM collate2t1 WHERE a IN ('aa', 'bb')) 
        FROM collate2t1;
    


      SELECT c IN (SELECT a FROM collate2t1 WHERE a IN ('aa', 'bb')) 
        FROM collate2t1;
    
