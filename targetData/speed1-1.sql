

    PRAGMA page_size=1024;
    PRAGMA cache_size=8192;
    PRAGMA locking_mode=EXCLUSIVE;
    CREATE TABLE t1(a INTEGER, b INTEGER, c TEXT);
    CREATE TABLE t2(a INTEGER, b INTEGER, c TEXT);
    CREATE INDEX i2a ON t2(a);
    CREATE INDEX i2b ON t2(b);
  

    SELECT name FROM sqlite_master ORDER BY 1;
  

}
for {set i 1
INSERT INTO t1 VALUES($i,$r,'[number_name $r]');\n

}
for {set i 1
INSERT INTO t2 VALUES($i,$r,'[number_name $r]');\n

}
for {set i 0
SELECT count(*), avg(b) FROM t1 WHERE b>=$lwr AND b<$upr;

}
for {set i 0

}
for {set i 0
SELECT count(*), avg(b) FROM t1 WHERE b>=$lwr AND b<$upr;

}
for {set i 1
SELECT c FROM t1 WHERE rowid=$id;

}
for {set i 1
SELECT c FROM t1 WHERE a=$id;

}
db eval {SELECT c FROM t1 ORDER BY random() LIMIT 50000

  append sql "SELECT c FROM t1 WHERE c='$c';"


}
for {set i 0
UPDATE t1 SET b=b*2 WHERE a>=$lwr AND a<$upr;

}
for {set i 0
UPDATE t1 SET b=$r WHERE a=$i;

}
for {set i 1
UPDATE t1 SET c='[number_name $r]' WHERE a=$i;

D

