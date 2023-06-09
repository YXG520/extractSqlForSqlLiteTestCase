

  CREATE TABLE t1(k1 INTEGER PRIMARY KEY, k2, k3);
  CREATE TABLE t2(k2 INTEGER PRIMARY KEY, v2);

  -- Prior to this problem being fixed, table t3_2 would be omitted from
  -- the join queries below, but if t3_1 were used in its place it would
  -- not.
  CREATE TABLE t3_1(k3 PRIMARY KEY, v3) WITHOUT ROWID;
  CREATE TABLE t3_2(v3, k3 PRIMARY KEY) WITHOUT ROWID;


S
Q

S
Q
