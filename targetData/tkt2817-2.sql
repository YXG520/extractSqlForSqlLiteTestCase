

    CREATE TEMP TABLE tmp(a, b, c);
    INSERT INTO tmp VALUES(1, 'abc', 'def');
    INSERT INTO tmp VALUES(2, 'ghi', 'jkl');
  


    CREATE TABLE main.tbl(a, b, c); 
    CREATE INDEX main.tbli ON tbl(a, b, c);
    INSERT INTO main.tbl SELECT a, b, c FROM temp.tmp;
  
