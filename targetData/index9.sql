array unset ::T
  uplevel [list db eval "EXPLAIN $sql" a {
    if {$a(opcode)=="OpenRead"
uplevel [list do_test $tn [list sqluses $sql] $objects]

CREATE TABLE t1(x, y);
  CREATE INDEX t1x ON t1(x) WHERE y=45;

t1 t1x
t1
t1
t1
t1
CREATE INDEX t1x2 ON t1(x) WHERE y=-20111000111

t1
t1 t1x2
t1
t1
CREATE INDEX t1x3 ON t1(x) WHERE y=9223372036854775807

t1 t1x3
t1
t1
t1
t1
CREATE INDEX t1x4 ON t1(x) WHERE y=-9223372036854775808

t1 t1x4
t1
t1
t1 t1x4
t1
