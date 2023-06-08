upvar VALS vals
  upvar COLS cols
  set vals [list]
  set cols [list]

  set rc [sqlite3_step $stmt]
  for {set i 0
lappend cols [sqlite3_column_name $stmt $i]
  
lappend vals [sqlite3_column_text $stmt $i]
  
CREATE TABLE t1(a,b,c);
INSERT INTO t1 VALUES(:1,?,:abc)
SELECT rowid, * FROM t1
test value 1
SELECT rowid, * FROM t1
'test value 2'
SELECT rowid, * FROM t1

abcdefg

DELETE FROM t1
SELECT rowid, * FROM t1
456
SELECT rowid, * FROM t1
INSERT INTO t1 VALUES($abc:123,?,:abc)
INSERT INTO t1 VALUES(@abc:xyz,?,:abc)
DELETE FROM t1;
    
INSERT INTO t1 VALUES($one,$::two,$x(-z-))
DELETE FROM t1;
    
INSERT INTO t1 VALUES(:one,:two,:_)
:hi
SELECT rowid, * FROM t1
SELECT rowid, * FROM t1
SELECT typeof(a), typeof(b), typeof(c) FROM t1
DELETE FROM t1;
  
SELECT rowid, * FROM t1
SELECT typeof(a), typeof(b), typeof(c) FROM t1
DELETE FROM t1;
  
SELECT rowid, * FROM t1
SELECT typeof(a), typeof(b), typeof(c) FROM t1
DELETE FROM t1;
  
SELECT rowid, * FROM t1
SELECT typeof(a), typeof(b), typeof(c) FROM t1
DELETE FROM t1;
  
SELECT rowid, * FROM t1
SELECT typeof(a), typeof(b), typeof(c) FROM t1
DELETE FROM t1;
  
SELECT rowid, * FROM t1
SELECT typeof(a), typeof(b), typeof(c) FROM t1
DELETE FROM t1;
  
SELECT * FROM t1
SELECT  hex(a), hex(b), hex(c) FROM t1
SELECT  hex(a), hex(b), hex(c) FROM t1
SELECT  hex(a), hex(b), hex(c) FROM t1
SELECT typeof(a), typeof(b), typeof(c) FROM t1
DELETE FROM t1;
  
SELECT rowid, * FROM t1
SELECT typeof(a), typeof(b), typeof(c) FROM t1
SELECT * FROM t1
SELECT hex(a), hex(b), hex(c) FROM t1
SELECT hex(a), hex(b), hex(c) FROM t1
SELECT hex(a), hex(b), hex(c) FROM t1
SELECT typeof(a), typeof(b), typeof(c) FROM t1
DELETE FROM t1;
CREATE TABLE t2(a,b,c,d,e,f);
  
INSERT INTO t2(a) VALUES(?0)
    
SELECT * FROM t2
INSERT INTO t2(a,b,c,d,e,f) VALUES(:abc,$abc,:abc,$ab,$abc,:abc)
      
INSERT INTO t2(a,b,c,d,e,f) VALUES(:abc,:xyz,:abc,:xy,:xyz,:abc)
      
SELECT * FROM t2
INSERT INTO t2(a,b,c,d,e,f) VALUES(:abc,?,?4,:pqr,:abc,?4)
    

SELECT * FROM sqlite_master WHERE name=$abc(123 and sql NOT NULL;
# Test the ability to bind text that contains embedded '\000' characters.
  # Make sure we can recover the entire input string.
  #
  do_test bind-12.1 {
    execsql {
      CREATE TABLE t3(x BLOB);
    
INSERT INTO t3 VALUES(?)
SELECT typeof(x), length(x), quote(x),
             length(cast(x AS BLOB)), quote(cast(x AS BLOB)) FROM t3
    
SELECT quote(cast(x_coalesce(x) AS blob)) FROM t3
    
SELECT ?,?,?
set ret [list]
  set VM [sqlite3_prepare db $zSql -1 TAIL]
  for {set ii 1
lappend ret [sqlite3_bind_parameter_name $VM $ii]
  
INSERT INTO t4(a,b,c,d,f,g,h,e) VALUES(?,?,?,?,?,?,?,?)
  
INSERT INTO t4(a,b,c,d,e,f,g,h) VALUES(?,?,?,?,?,?,?,?)
  
INSERT INTO t4(h,g,f,e,d,c,b,a) VALUES(?,?,?,?,?,?,?,?)
  
INSERT INTO t4(a,b,c,d,e,f,g,h) VALUES(?,?,?,?4,?,?6,?,?)
  
