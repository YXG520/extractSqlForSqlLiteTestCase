

  CREATE TABLE t1(x);
  SELECT coalesce(x, abs(-9223372036854775808)) FROM t1;



  SELECT coalesce(x, 'xyz' LIKE printf('%.1000000c','y')) FROM t1;



  CREATE TABLE t0(c0 CHECK(ABS(-9223372036854775808)));
  PRAGMA integrity_check;

