CREATE TABLE xyz(one, two, thr, fou);
  INSERT INTO xyz VALUES('A', 'A', 'A',  1);
  INSERT INTO xyz VALUES('B', 'B', 'B',  2);
  INSERT INTO xyz VALUES('C', 'C', 'C',  3);
  INSERT INTO xyz VALUES('D', 'D', 'D',  4);

  CREATE UNIQUE INDEX xyz_one_two ON xyz(one, two);

SELECT fou FROM xyz WHERE (one, two, thr) = ('B', 'B', 'B') 
SELECT fou FROM xyz WHERE (two, thr) IS ('C', 'C') 
SELECT fou FROM xyz WHERE (one, two, thr) > ('B', 'B', 'B') 
SELECT fou FROM xyz WHERE (one, two) IN (SELECT one, two FROM xyz) 
SELECT fou FROM xyz 
    WHERE (one, two, thr) IN (SELECT one, two, thr FROM xyz) 
  
SELECT fou FROM xyz 
    WHERE (one, two, thr) BETWEEN ('B', 'B', 'B') AND ('C', 'C', 'C') 
SELECT fou FROM xyz 
    WHERE (one, two, thr) IN ( ('a','b','c'), ('A','A','A'), (1,2,3) );
  
SELECT fou FROM xyz 
    WHERE (two, one) IN ( ('a','b','c'), ('A','A','A'), (1,2,3) );
  
