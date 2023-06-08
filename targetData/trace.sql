CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    SELECT * FROM t1;
  
INSERT INTO t1 VALUES(2,3)
global TRACE_OUT
    lappend TRACE_OUT [string trim $sql]
  
SELECT * FROM t1
CREATE TABLE t2(a,b);
    INSERT INTO t2 VALUES(1,2);
    SELECT * FROM t2;
  
INSERT INTO t2 VALUES(2,3)
global TRACE_OUT
    lappend TRACE_OUT [string trim $sql]
  
SELECT * FROM t1
SELECT $::t6int, $::t6real, $t6str, $t6blob, $t6null
SELECT $::t6int, ?1, $::t6int
CREATE TABLE t6([$::t6int],"?1"); INSERT INTO t6 VALUES(1,2)
SELECT '$::t6int', [$::t6int], $::t6int, ?1, "?1", $::t6int FROM t6
SELECT '$::t6str', [$::t6str], $::t6str, ?1, "?1", $::t6str FROM t6
SELECT '$::t6str', [$::t6str], $::t6str, ?1, "?1", $::t6str FROM t6
