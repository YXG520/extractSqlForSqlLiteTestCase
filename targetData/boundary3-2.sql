

    SELECT t1.* FROM t1, t2 WHERE t1.rowid=72057594037927935 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='00ffffffffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=17
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 72057594037927935 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 72057594037927935 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=17
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=17
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=17
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 72057594037927935 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 72057594037927935 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=17
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=17
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=17
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 72057594037927935 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 72057594037927935 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=17
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=17
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=17
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 72057594037927935 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 72057594037927935 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=17
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=17
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=17
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=16384 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000004000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=16
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 16384 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 16384 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=16
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=16
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=16
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=16
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=16
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 16384 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 16384 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=16
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=16
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=16
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=16
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=16
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 16384 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 16384 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=16
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=16
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=16
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=16
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=16
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 16384 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 16384 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=16
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=16
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=16
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=16
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=16
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=4294967296 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000100000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=36
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 4294967296 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 4294967296 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=36
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=36
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=36
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=36
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=36
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 4294967296 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 4294967296 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=36
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=36
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=36
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=36
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=36
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 4294967296 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 4294967296 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=36
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=36
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=36
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=36
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=36
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 4294967296 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 4294967296 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=36
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=36
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=36
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=36
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=36
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=16777216 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000001000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=6
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 16777216 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 16777216 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=6
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=6
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=6
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=6
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=6
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 16777216 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 16777216 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=6
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=6
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=6
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=6
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=6
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 16777216 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 16777216 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=6
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=6
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=6
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=6
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=6
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 16777216 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 16777216 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=6
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=6
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=6
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=6
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=6
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-32769 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ffffffffffff7fff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=29
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -32769 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -32769 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=29
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=29
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=29
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=29
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=29
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -32769 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -32769 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=29
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=29
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=29
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=29
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=29
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -32769 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -32769 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=29
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=29
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=29
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=29
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=29
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -32769 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -32769 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=29
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=29
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=29
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=29
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=29
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-140737488355329 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ffff7fffffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=21
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -140737488355329 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -140737488355329 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=21
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=21
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=21
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -140737488355329 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -140737488355329 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=21
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=21
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=21
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -140737488355329 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -140737488355329 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=21
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=21
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=21
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -140737488355329 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -140737488355329 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=21
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=21
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=21
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=2 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000000002'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=41
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 2 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 2 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=41
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=41
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=41
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=41
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=41
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 2 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 2 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=41
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=41
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=41
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=41
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=41
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 2 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 2 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=41
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=41
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=41
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=41
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=41
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 2 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 2 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=41
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=41
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=41
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=41
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=41
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=4 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000000004'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=31
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 4 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 4 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=31
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=31
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=31
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=31
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=31
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 4 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 4 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=31
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=31
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=31
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=31
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=31
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 4 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 4 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=31
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=31
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=31
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=31
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=31
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 4 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 4 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=31
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=31
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=31
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=31
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=31
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=562949953421311 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0001ffffffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=13
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 562949953421311 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 562949953421311 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=13
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=13
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=13
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 562949953421311 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 562949953421311 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=13
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=13
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=13
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 562949953421311 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 562949953421311 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=13
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=13
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=13
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 562949953421311 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 562949953421311 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=13
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=13
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=13
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=256 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000000100'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=61
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 256 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 256 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=61
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=61
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=61
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=61
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=61
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 256 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 256 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=61
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=61
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=61
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=61
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=61
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 256 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 256 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=61
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=61
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=61
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=61
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=61
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 256 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 256 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=61
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=61
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=61
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=61
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=61
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=34359738368 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000800000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=22
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 34359738368 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 34359738368 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=22
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=22
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=22
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=22
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=22
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 34359738368 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 34359738368 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=22
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=22
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=22
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=22
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=22
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 34359738368 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 34359738368 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=22
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=22
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=22
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=22
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=22
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 34359738368 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 34359738368 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=22
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=22
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=22
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=22
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=22
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=65536 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000010000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=62
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 65536 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 65536 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=62
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=62
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=62
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=62
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=62
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 65536 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 65536 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=62
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=62
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=62
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=62
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=62
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 65536 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 65536 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=62
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=62
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=62
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=62
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=62
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 65536 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 65536 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=62
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=62
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=62
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=62
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=62
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=268435456 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000010000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=40
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 268435456 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 268435456 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=40
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=40
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=40
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=40
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=40
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 268435456 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 268435456 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=40
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=40
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=40
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=40
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=40
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 268435456 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 268435456 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=40
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=40
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=40
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=40
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=40
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 268435456 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 268435456 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=40
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=40
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=40
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=40
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=40
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-140737488355328 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ffff800000000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=44
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -140737488355328 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -140737488355328 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=44
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=44
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=44
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -140737488355328 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -140737488355328 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=44
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=44
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=44
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -140737488355328 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -140737488355328 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=44
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=44
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=44
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -140737488355328 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -140737488355328 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=44
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=44
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=44
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=1099511627776 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000010000000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=19
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 1099511627776 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 1099511627776 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=19
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=19
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=19
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=19
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=19
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 1099511627776 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 1099511627776 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=19
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=19
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=19
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=19
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=19
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 1099511627776 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 1099511627776 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=19
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=19
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=19
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=19
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=19
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 1099511627776 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 1099511627776 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=19
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=19
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=19
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=19
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=19
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 9223372036854775807 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 9223372036854775807 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=3
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=3
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=3
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 9223372036854775807 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 9223372036854775807 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=3
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=3
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=3
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 9223372036854775807 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 9223372036854775807 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=3
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=3
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=3
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 9223372036854775807 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 9223372036854775807 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=3
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=3
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=3
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=32768 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000008000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=50
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 32768 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 32768 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=50
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=50
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=50
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=50
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=50
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 32768 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 32768 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=50
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=50
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=50
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=50
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=50
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 32768 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 32768 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=50
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=50
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=50
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=50
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=50
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 32768 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 32768 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=50
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=50
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=50
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=50
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=50
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-36028797018963968 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ff80000000000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=64
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -36028797018963968 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -36028797018963968 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=64
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=64
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=64
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -36028797018963968 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -36028797018963968 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=64
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=64
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=64
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -36028797018963968 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -36028797018963968 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=64
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=64
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=64
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -36028797018963968 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -36028797018963968 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=64
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=64
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=64
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=65535 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='000000000000ffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=48
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 65535 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 65535 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=48
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=48
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=48
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=48
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=48
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 65535 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 65535 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=48
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=48
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=48
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=48
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=48
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 65535 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 65535 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=48
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=48
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=48
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=48
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=48
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 65535 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 65535 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=48
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=48
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=48
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=48
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=48
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=4294967295 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='00000000ffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=14
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 4294967295 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 4294967295 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=14
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=14
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=14
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=14
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=14
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 4294967295 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 4294967295 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=14
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=14
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=14
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=14
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=14
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 4294967295 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 4294967295 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=14
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=14
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=14
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=14
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=14
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 4294967295 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 4294967295 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=14
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=14
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=14
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=14
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=14
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=1099511627775 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='000000ffffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=57
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 1099511627775 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 1099511627775 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=57
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=57
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=57
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=57
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=57
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 1099511627775 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 1099511627775 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=57
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=57
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=57
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=57
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=57
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 1099511627775 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 1099511627775 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=57
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=57
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=57
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=57
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=57
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 1099511627775 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 1099511627775 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=57
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=57
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=57
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=57
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=57
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-8388608 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ffffffffff800000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=37
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -8388608 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -8388608 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=37
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=37
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=37
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=37
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=37
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -8388608 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -8388608 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=37
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=37
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=37
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=37
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=37
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -8388608 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -8388608 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=37
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=37
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=37
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=37
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=37
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -8388608 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -8388608 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=37
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=37
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=37
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=37
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=37
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=549755813888 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000008000000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=35
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 549755813888 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 549755813888 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=35
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=35
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=35
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=35
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=35
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 549755813888 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 549755813888 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=35
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=35
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=35
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=35
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=35
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 549755813888 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 549755813888 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=35
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=35
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=35
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=35
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=35
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 549755813888 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 549755813888 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=35
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=35
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=35
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=35
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=35
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=8388607 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='00000000007fffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=18
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 8388607 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 8388607 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=18
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=18
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=18
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=18
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=18
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 8388607 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 8388607 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=18
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=18
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=18
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=18
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=18
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 8388607 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 8388607 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=18
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=18
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=18
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=18
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=18
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 8388607 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 8388607 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=18
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=18
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=18
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=18
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=18
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-3 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='fffffffffffffffd'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=52
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -3 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -3 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=52
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=52
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=52
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=52
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=52
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -3 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -3 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=52
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=52
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=52
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=52
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=52
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -3 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -3 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=52
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=52
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=52
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=52
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=52
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -3 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -3 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=52
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=52
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=52
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=52
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=52
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=0 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=59
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 0 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 0 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=59
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=59
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=59
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=59
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=59
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 0 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 0 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=59
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=59
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=59
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=59
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=59
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 0 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 0 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=59
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=59
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=59
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=59
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=59
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 0 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 0 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=59
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=59
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=59
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=59
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=59
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-1 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ffffffffffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=38
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -1 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -1 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=38
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=38
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=38
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=38
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=38
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -1 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -1 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=38
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=38
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=38
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=38
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=38
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -1 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -1 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=38
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=38
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=38
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=38
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=38
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -1 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -1 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=38
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=38
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=38
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=38
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=38
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-2 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='fffffffffffffffe'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=33
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -2 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -2 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=33
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=33
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=33
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=33
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=33
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -2 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -2 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=33
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=33
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=33
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=33
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=33
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -2 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -2 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=33
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=33
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=33
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=33
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=33
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -2 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -2 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=33
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=33
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=33
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=33
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=33
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=2097152 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000200000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=42
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 2097152 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 2097152 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=42
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=42
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=42
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=42
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=42
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 2097152 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 2097152 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=42
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=42
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=42
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=42
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=42
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 2097152 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 2097152 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=42
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=42
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=42
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=42
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=42
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 2097152 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 2097152 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=42
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=42
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=42
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=42
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=42
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=128 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000000080'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=49
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 128 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 128 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=49
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=49
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=49
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=49
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=49
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 128 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 128 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=49
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=49
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=49
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=49
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=49
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 128 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 128 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=49
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=49
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=49
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=49
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=49
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 128 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 128 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=49
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=49
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=49
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=49
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=49
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=255 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='00000000000000ff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=30
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 255 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 255 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=30
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=30
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=30
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=30
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=30
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 255 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 255 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=30
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=30
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=30
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=30
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=30
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 255 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 255 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=30
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=30
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=30
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=30
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=30
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 255 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 255 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=30
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=30
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=30
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=30
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=30
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-2147483648 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ffffffff80000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=11
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -2147483648 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -2147483648 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=11
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=11
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=11
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=11
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=11
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -2147483648 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -2147483648 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=11
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=11
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=11
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=11
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=11
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -2147483648 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -2147483648 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=11
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=11
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=11
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=11
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=11
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -2147483648 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -2147483648 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=11
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=11
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=11
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=11
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=11
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=34359738367 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='00000007ffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=39
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 34359738367 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 34359738367 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=39
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=39
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=39
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=39
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=39
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 34359738367 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 34359738367 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=39
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=39
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=39
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=39
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=39
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 34359738367 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 34359738367 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=39
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=39
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=39
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=39
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=39
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 34359738367 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 34359738367 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=39
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=39
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=39
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=39
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=39
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-549755813889 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ffffff7fffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=58
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -549755813889 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -549755813889 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=58
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=58
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=58
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=58
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=58
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -549755813889 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -549755813889 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=58
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=58
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=58
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=58
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=58
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -549755813889 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -549755813889 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=58
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=58
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=58
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=58
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=58
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -549755813889 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -549755813889 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=58
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=58
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=58
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=58
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=58
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-32768 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ffffffffffff8000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=32
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -32768 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -32768 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=32
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=32
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=32
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=32
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=32
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -32768 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -32768 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=32
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=32
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=32
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=32
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=32
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -32768 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -32768 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=32
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=32
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=32
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=32
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=32
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -32768 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -32768 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=32
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=32
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=32
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=32
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=32
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=2147483647 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='000000007fffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=20
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 2147483647 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 2147483647 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=20
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=20
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=20
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=20
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=20
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 2147483647 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 2147483647 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=20
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=20
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=20
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=20
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=20
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 2147483647 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 2147483647 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=20
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=20
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=20
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=20
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=20
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 2147483647 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 2147483647 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=20
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=20
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=20
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=20
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=20
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-129 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ffffffffffffff7f'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=54
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -129 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -129 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=54
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=54
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=54
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=54
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=54
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -129 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -129 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=54
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=54
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=54
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=54
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=54
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -129 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -129 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=54
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=54
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=54
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=54
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=54
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -129 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -129 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=54
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=54
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=54
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=54
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=54
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-128 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ffffffffffffff80'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=53
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -128 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -128 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=53
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=53
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=53
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=53
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=53
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -128 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -128 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=53
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=53
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=53
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=53
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=53
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -128 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -128 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=53
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=53
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=53
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=53
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=53
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -128 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -128 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=53
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=53
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=53
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=53
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=53
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=72057594037927936 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0100000000000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=28
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 72057594037927936 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 72057594037927936 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=28
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=28
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=28
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 72057594037927936 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 72057594037927936 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=28
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=28
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=28
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 72057594037927936 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 72057594037927936 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=28
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=28
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=28
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 72057594037927936 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 72057594037927936 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=28
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=28
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=28
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=2147483648 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000080000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=51
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 2147483648 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 2147483648 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=51
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=51
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=51
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=51
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=51
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 2147483648 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 2147483648 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=51
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=51
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=51
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=51
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=51
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 2147483648 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 2147483648 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=51
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=51
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=51
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=51
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=51
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 2147483648 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 2147483648 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=51
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=51
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=51
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=51
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=51
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=549755813887 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000007fffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=46
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 549755813887 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 549755813887 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=46
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=46
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=46
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=46
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=46
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 549755813887 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 549755813887 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=46
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=46
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=46
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=46
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=46
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 549755813887 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 549755813887 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=46
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=46
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=46
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=46
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=46
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 549755813887 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 549755813887 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=46
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=46
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=46
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=46
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=46
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-549755813888 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ffffff8000000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=63
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -549755813888 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -549755813888 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=63
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=63
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=63
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=63
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=63
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -549755813888 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -549755813888 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=63
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=63
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=63
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=63
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=63
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -549755813888 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -549755813888 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=63
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=63
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=63
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=63
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=63
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -549755813888 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -549755813888 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=63
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=63
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=63
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=63
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=63
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=281474976710655 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000ffffffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=10
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 281474976710655 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 281474976710655 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=10
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=10
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=10
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 281474976710655 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 281474976710655 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=10
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=10
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=10
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 281474976710655 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 281474976710655 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=10
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=10
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=10
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 281474976710655 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 281474976710655 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=10
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=10
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=10
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=4398046511103 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='000003ffffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=7
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 4398046511103 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 4398046511103 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=7
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=7
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=7
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=7
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=7
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 4398046511103 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 4398046511103 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=7
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=7
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=7
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=7
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=7
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 4398046511103 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 4398046511103 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=7
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=7
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=7
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=7
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=7
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 4398046511103 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 4398046511103 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=7
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=7
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=7
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=7
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=7
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=268435455 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='000000000fffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=12
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 268435455 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 268435455 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=12
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=12
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=12
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=12
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=12
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 268435455 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 268435455 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=12
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=12
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=12
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=12
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=12
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 268435455 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 268435455 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=12
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=12
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=12
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=12
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=12
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 268435455 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 268435455 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=12
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=12
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=12
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=12
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=12
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-9223372036854775808 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='8000000000000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=55
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -9223372036854775808 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -9223372036854775808 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=55
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=55
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=55
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -9223372036854775808 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -9223372036854775808 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=55
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=55
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=55
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -9223372036854775808 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -9223372036854775808 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=55
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=55
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=55
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -9223372036854775808 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -9223372036854775808 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=55
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=55
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=55
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=562949953421312 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0002000000000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=43
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 562949953421312 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 562949953421312 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=43
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=43
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=43
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 562949953421312 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 562949953421312 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=43
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=43
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=43
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 562949953421312 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 562949953421312 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=43
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=43
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=43
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 562949953421312 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 562949953421312 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=43
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=43
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=43
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-8388609 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ffffffffff7fffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=1
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -8388609 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -8388609 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=1
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=1
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=1
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=1
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=1
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -8388609 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -8388609 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=1
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=1
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=1
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=1
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=1
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -8388609 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -8388609 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=1
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=1
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=1
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=1
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=1
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -8388609 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -8388609 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=1
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=1
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=1
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=1
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=1
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=16777215 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000ffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=9
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 16777215 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 16777215 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=9
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=9
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=9
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=9
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=9
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 16777215 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 16777215 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=9
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=9
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=9
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=9
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=9
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 16777215 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 16777215 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=9
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=9
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=9
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=9
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=9
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 16777215 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 16777215 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=9
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=9
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=9
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=9
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=9
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=8388608 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000800000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=24
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 8388608 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 8388608 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=24
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=24
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=24
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=24
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=24
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 8388608 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 8388608 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=24
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=24
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=24
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=24
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=24
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 8388608 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 8388608 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=24
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=24
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=24
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=24
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=24
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 8388608 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 8388608 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=24
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=24
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=24
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=24
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=24
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=16383 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000003fff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=8
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 16383 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 16383 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=8
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=8
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=8
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=8
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=8
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 16383 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 16383 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=8
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=8
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=8
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=8
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=8
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 16383 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 16383 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=8
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=8
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=8
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=8
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=8
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 16383 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 16383 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=8
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=8
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=8
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=8
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=8
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=140737488355328 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000800000000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=34
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 140737488355328 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 140737488355328 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=34
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=34
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=34
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 140737488355328 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 140737488355328 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=34
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=34
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=34
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 140737488355328 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 140737488355328 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=34
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=34
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=34
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 140737488355328 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 140737488355328 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=34
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=34
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=34
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=2097151 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='00000000001fffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=15
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 2097151 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 2097151 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=15
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=15
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=15
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=15
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=15
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 2097151 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 2097151 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=15
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=15
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=15
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=15
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=15
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 2097151 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 2097151 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=15
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=15
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=15
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=15
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=15
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 2097151 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 2097151 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=15
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=15
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=15
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=15
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=15
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=140737488355327 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='00007fffffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=25
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 140737488355327 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 140737488355327 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=25
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=25
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=25
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 140737488355327 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 140737488355327 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=25
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=25
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=25
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 140737488355327 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 140737488355327 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=25
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=25
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=25
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 140737488355327 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 140737488355327 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=25
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=25
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=25
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=281474976710656 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0001000000000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=26
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 281474976710656 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 281474976710656 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=26
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=26
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=26
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 281474976710656 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 281474976710656 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=26
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=26
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=26
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 281474976710656 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 281474976710656 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=26
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=26
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=26
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 281474976710656 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 281474976710656 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=26
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=26
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=26
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=32767 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000007fff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=23
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 32767 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 32767 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=23
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=23
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=23
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=23
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=23
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 32767 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 32767 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=23
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=23
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=23
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=23
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=23
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 32767 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 32767 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=23
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=23
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=23
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=23
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=23
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 32767 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 32767 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=23
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=23
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=23
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=23
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=23
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=127 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='000000000000007f'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=4
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 127 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 127 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=4
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=4
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=4
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=4
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=4
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 127 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 127 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=4
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=4
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=4
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=4
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=4
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 127 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 127 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=4
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=4
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=4
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=4
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=4
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 127 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 127 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=4
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=4
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=4
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=4
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=4
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=36028797018963967 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='007fffffffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=27
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 36028797018963967 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 36028797018963967 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=27
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=27
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=27
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 36028797018963967 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 36028797018963967 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=27
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=27
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=27
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 36028797018963967 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 36028797018963967 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=27
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=27
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=27
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 36028797018963967 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 36028797018963967 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=27
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=27
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=27
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=4398046511104 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000040000000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=56
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 4398046511104 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 4398046511104 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=56
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=56
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=56
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=56
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=56
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 4398046511104 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 4398046511104 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=56
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=56
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=56
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=56
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=56
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 4398046511104 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 4398046511104 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=56
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=56
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=56
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=56
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=56
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 4398046511104 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 4398046511104 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=56
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=56
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=56
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=56
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=56
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=1 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000000001'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=60
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 1 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 1 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=60
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=60
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=60
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=60
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=60
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 1 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 1 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=60
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=60
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=60
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=60
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=60
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 1 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 1 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=60
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=60
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=60
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=60
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=60
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 1 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 1 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=60
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=60
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=60
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=60
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=60
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=36028797018963968 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0080000000000000'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=45
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 36028797018963968 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 36028797018963968 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=45
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=45
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=45
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 36028797018963968 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 36028797018963968 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=45
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=45
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=45
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 36028797018963968 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 36028797018963968 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=45
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=45
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=45
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 36028797018963968 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 36028797018963968 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=45
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=45
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=45
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-2147483649 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ffffffff7fffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=47
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -2147483649 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -2147483649 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=47
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=47
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=47
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=47
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=47
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -2147483649 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -2147483649 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=47
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=47
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=47
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=47
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=47
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -2147483649 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -2147483649 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=47
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=47
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=47
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=47
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=47
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -2147483649 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -2147483649 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=47
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=47
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=47
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=47
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=47
     ORDER BY t1.rowid DESC
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=-36028797018963969 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='ff7fffffffffffff'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=2
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -36028797018963969 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -36028797018963969 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=2
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=2
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=2
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -36028797018963969 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -36028797018963969 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=2
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=2
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=2
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -36028797018963969 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -36028797018963969 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=2
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=2
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=2
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -36028797018963969 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -36028797018963969 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=2
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=2
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=2
     ORDER BY x
  


    SELECT t1.* FROM t1, t2 WHERE t1.rowid=3 AND t2.a=t1.a
  


    SELECT t2.* FROM t1 JOIN t2 USING(a) WHERE x='0000000000000003'
  


    SELECT t1.rowid, x FROM t1 JOIN t2 ON t2.r=t1.rowid WHERE t2.a=5
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 3 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 3 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=5
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=5
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=5
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=5
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > CAST(t2.r AS real)
     WHERE t2.a=5
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 3 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 3 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=5
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=5
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=5
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=5
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= CAST(t2.r AS real)
     WHERE t2.a=5
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 3 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 3 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=5
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=5
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=5
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=5
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < CAST(t2.r AS real)
     WHERE t2.a=5
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 3 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 3 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=5
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=5
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=5
     ORDER BY x
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=5
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= CAST(t2.r AS real)
     WHERE t2.a=5
     ORDER BY t1.rowid DESC
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > 9.22337303685477580800e+18 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > 9.22337303685477580800e+18 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=65
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=65
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=65
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= 9.22337303685477580800e+18 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= 9.22337303685477580800e+18 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=65
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=65
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=65
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < 9.22337303685477580800e+18 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < 9.22337303685477580800e+18 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=65
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=65
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=65
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= 9.22337303685477580800e+18 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= 9.22337303685477580800e+18 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=65
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=65
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=65
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid > -9.22337303685477580800e+18 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid > -9.22337303685477580800e+18 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=66
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=66
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid > t2.r
     WHERE t2.a=66
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid >= -9.22337303685477580800e+18 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid >= -9.22337303685477580800e+18 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=66
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=66
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid >= t2.r
     WHERE t2.a=66
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid < -9.22337303685477580800e+18 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid < -9.22337303685477580800e+18 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=66
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=66
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid < t2.r
     WHERE t2.a=66
     ORDER BY x
  


    SELECT t2.a FROM t1 JOIN t2 USING(a)
     WHERE t1.rowid <= -9.22337303685477580800e+18 ORDER BY t2.a
  


    SELECT t2.a FROM t2 NATURAL JOIN t1
     WHERE t1.rowid <= -9.22337303685477580800e+18 ORDER BY t1.a DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=66
     ORDER BY t1.rowid
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=66
     ORDER BY t1.rowid DESC
  


    SELECT t1.a FROM t1 JOIN t2 ON t1.rowid <= t2.r
     WHERE t2.a=66
     ORDER BY x
  
