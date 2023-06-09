

    CREATE TABLE t4(x);
    INSERT INTO t4 VALUES('abc');
    INSERT INTO t4 VALUES('BCD');
    SELECT max(x) FROM t4;
  


    SELECT max(x COLLATE nocase) FROM t4;
  


    SELECT max(x), max(x COLLATE nocase) FROM t4;
  


    SELECT max(x COLLATE binary), max(x COLLATE nocase) FROM t4;
  


    SELECT max(x COLLATE nocase), max(x COLLATE rtrim) FROM t4;
  


    SELECT max(x COLLATE nocase), max(x) FROM t4;
  


    SELECT min(x) FROM t4;
  


    SELECT min(x COLLATE nocase) FROM t4;
  


    SELECT min(x), min(x COLLATE nocase) FROM t4;
  


    SELECT min(x COLLATE binary), min(x COLLATE nocase) FROM t4;
  


    SELECT min(x COLLATE nocase), min(x COLLATE rtrim) FROM t4;
  


    SELECT min(x COLLATE nocase), min(x) FROM t4;
  
