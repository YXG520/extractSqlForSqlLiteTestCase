db eval "SELECT tbl_name, rootpage FROM sqlite_master where rootpage" {
    set lookup($rootpage) $tbl_name
  
switch -- $a(opcode) {
      OpenRead {
        set csr($a(p1)) $lookup($a(p2))
      
uplevel [list do_test $tn [list extract_hints $sql] [list {*
PRAGMA automatic_index = 0;
  CREATE TABLE t1(a, b);
  CREATE TABLE t2(c, d);
  CREATE TABLE t3(e, f);

CREATE TABLE x1(x, y);
  CREATE TABLE x2(a, b);

CREATE TABLE t1 (i1 TEXT);    
  CREATE TABLE t2 (i2 TEXT UNIQUE);    
  INSERT INTO t1 VALUES('0');
  INSERT INTO t2 VALUES('0');

