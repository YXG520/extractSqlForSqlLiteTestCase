

    CREATE TABLE t1(a, b, c, d);
    CREATE INDEX i1 ON t1(a);
    CREATE INDEX i2 ON t1(b, c);
  
 INSERT INTO t1(rowid, a, b, c) VALUES($i, $a, $i, $i) 

S

S

S

S

S

SELECT a, b, c, d FROM t1

    incr k($a)
    incr k([list $a $b])
    incr k([list $a $b $c])
    if { [info exists k([list $a $b $c $d])]==0 
SELECT test_decode(sample) FROM sqlite_stat4 WHERE idx='i1'
SELECT test_decode(sample) AS s FROM sqlite_stat4 WHERE idx='i1'

    set seen 0
    for {set i 0
