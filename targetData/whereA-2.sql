

    PRAGMA reverse_unordered_selects=0;
    SELECT * FROM t1 WHERE a>0;
  


    PRAGMA reverse_unordered_selects=1;
    SELECT * FROM t1 WHERE a>0;
  


    PRAGMA reverse_unordered_selects=1;
    SELECT * FROM t1 WHERE a>0 ORDER BY rowid;
  
