
file:$::fza?mode=rwc$::vf

    PRAGMA page_size=1024;
    PRAGMA cache_size=10;
    CREATE TABLE t1(a TEXT);
    INSERT INTO t1 VALUES ('dog'),('cat');
    SELECT group_concat(a) as pets FROM (SELECT a FROM t1 ORDER BY a);
  

file:$::fza?mode=rw$::vf

    SELECT group_concat(a) as pets FROM (SELECT a FROM t1 ORDER BY a DESC);
  

file:$::fa?mode=rwc$::vf

    PRAGMA auto_vacuum = 0;
    PRAGMA page_size=512;
    PRAGMA cache_size=0;
    CREATE TABLE t1(a TEXT);
    INSERT INTO t1 VALUES ('dog'),('cat'),('pig');
    SELECT group_concat(a) as pets FROM (SELECT a FROM t1 ORDER BY a);
  

file:$::fa?mode=rw$::vf

    SELECT group_concat(a) as pets FROM (SELECT a FROM t1 ORDER BY a DESC);
  

