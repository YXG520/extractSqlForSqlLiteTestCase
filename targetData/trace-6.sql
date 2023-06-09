
SELECT x'3031323334' AS x
set ::t6blob $x
SELECT $::t6int, $::t6real, $t6str, $t6blob, $t6null


SELECT $::t6int, ?1, $::t6int


CREATE TABLE t6([$::t6int],"?1"); INSERT INTO t6 VALUES(1,2)
?1



     PRAGMA encoding=UTF16be;
     CREATE TABLE t6([$::t6str],"?1");
     INSERT INTO t6 VALUES(1,2);
  
?1



     PRAGMA encoding=UTF16le;
     CREATE TABLE t6([$::t6str],"?1");
     INSERT INTO t6 VALUES(1,2);
  
?1

