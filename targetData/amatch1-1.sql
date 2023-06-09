

    CREATE VIRTUAL TABLE t1 USING fts4(words); --, tokenize porter);
  

    INSERT INTO t1(t1) VALUES('optimize');
    CREATE VIRTUAL TABLE temp.t1aux USING fts4aux(main, t1);
    SELECT term FROM t1aux WHERE col=0 ORDER BY 1 LIMIT 5
  


    SELECT term FROM t1aux WHERE term>'b' AND col=0 ORDER BY 1 LIMIT 5
  


    SELECT term FROM t1aux WHERE term>'b' AND col=0 LIMIT 5
  
