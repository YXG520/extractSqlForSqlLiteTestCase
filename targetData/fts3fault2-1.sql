

    CREATE VIRTUAL TABLE t1 USING fts4(x);
    INSERT INTO t1 VALUES('a b c');
    INSERT INTO t1 VALUES('c d e');
    CREATE VIRTUAL TABLE terms USING fts4aux(t1);
  
