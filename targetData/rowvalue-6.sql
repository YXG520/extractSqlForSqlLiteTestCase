

  CREATE TABLE hh(a, b, c);
  INSERT INTO hh VALUES('abc', 1, 'i');
  INSERT INTO hh VALUES('ABC', 1, 'ii');
  INSERT INTO hh VALUES('def', 2, 'iii');
  INSERT INTO hh VALUES('DEF', 2, 'iv');
  INSERT INTO hh VALUES('GHI', 3, 'v');
  INSERT INTO hh VALUES('ghi', 3, 'vi');

  CREATE INDEX hh_ab ON hh(a, b); 



  SELECT c FROM hh WHERE (a, b) = (SELECT 'abc', 1);



  SELECT c FROM hh WHERE (a, b) = (SELECT 'abc' COLLATE nocase, 1);



  SELECT c FROM hh WHERE a = (SELECT 'abc' COLLATE nocase) AND b = (SELECT 1);



  SELECT c FROM hh WHERE +a = (SELECT 'abc' COLLATE nocase) AND b = (SELECT 1);



  SELECT c FROM hh WHERE a = (SELECT 'abc') COLLATE nocase AND b = (SELECT 1);



  SELECT c FROM hh WHERE (a, b) = (SELECT 'abc', 1) COLLATE nocase;



  SELECT c FROM hh WHERE (a, b) = 1;



  SELECT c FROM hh WHERE (a COLLATE nocase, b) = (SELECT 'def', 2);



  SELECT c FROM hh WHERE (a COLLATE nocase, b) IS NOT (SELECT 'def', 2);



  SELECT c FROM hh WHERE (b, a) = (SELECT 2, 'def');

