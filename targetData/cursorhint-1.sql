

  CREATE TABLE t1(a,b,c,d);
  CREATE TABLE t2(x,y,z);
  INSERT INTO t1(a,b) VALUES(10, 15);
  INSERT INTO t1(a,b) VALUES(20, 25);
  INSERT INTO t2(x,y) VALUES('ten', 'fifteen');
  INSERT INTO t2(x,y) VALUES('twenty', 'twentyfive');
  CREATE TABLE t3(id TEXT PRIMARY KEY, a, b, c, d) WITHOUT ROWID;
  INSERT INTO t3(id,a,b,c,d) SELECT rowid, a, b, c, d FROM t1;
  PRAGMA automatic_index = 0;


  set res {

    if {$x(opcode)==$opcode

  set res {

    if {$x(opcode)==$opcode

S

S
