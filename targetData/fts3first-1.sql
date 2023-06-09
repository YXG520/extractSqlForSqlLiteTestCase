



 
    INSERT INTO x1(x1) VALUES('optimize');
    INSERT INTO x2(x2) VALUES('optimize');
  


    SELECT snippet(x1, '[', ']', '...') FROM x1 WHERE x1 MATCH $match
  


    SELECT snippet(x2, '[', ']', '...') FROM x2 WHERE x2 MATCH $match
  


    SELECT mit(matchinfo(x1, 'x')) FROM x1 WHERE x1 MATCH $match
  


    SELECT mit(matchinfo(x2, 'x')) FROM x2 WHERE x2 MATCH $match
  
