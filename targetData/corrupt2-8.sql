

  } {1 {database disk image is malformed}}
}

corruption_test -sqlprep {
  CREATE TABLE t1(a, b, c); CREATE TABLE t8(a, b, c); CREATE TABLE tE(a, b, c);
  CREATE TABLE t2(a, b, c); CREATE TABLE t9(a, b, c); CREATE TABLE tF(a, b, c);
  CREATE TABLE t3(a, b, c); CREATE TABLE tA(a, b, c); CREATE TABLE tG(a, b, c);
  CREATE TABLE t4(a, b, c); CREATE TABLE tB(a, b, c); CREATE TABLE tH(a, b, c);
  CREATE TABLE t5(a, b, c); CREATE TABLE tC(a, b, c); CREATE TABLE tI(a, b, c);
  CREATE TABLE t6(a, b, c); CREATE TABLE tD(a, b, c); CREATE TABLE tJ(a, b, c);
  CREATE TABLE x1(a, b, c); CREATE TABLE x8(a, b, c); CREATE TABLE xE(a, b, c);
  CREATE TABLE x2(a, b, c); CREATE TABLE x9(a, b, c); CREATE TABLE xF(a, b, c);
  CREATE TABLE x3(a, b, c); CREATE TABLE xA(a, b, c); CREATE TABLE xG(a, b, c);
  CREATE TABLE x4(a, b, c); CREATE TABLE xB(a, b, c); CREATE TABLE xH(a, b, c);
  CREATE TABLE x5(a, b, c); CREATE TABLE xC(a, b, c); CREATE TABLE xI(a, b, c);
  CREATE TABLE x6(a, b, c); CREATE TABLE xD(a, b, c); CREATE TABLE xJ(a, b, c);
} -corrupt {
  set fd [open corrupt.db r+]
  fconfigure $fd -translation binary -encoding binary
  seek $fd 108
  set zRightChild [read $fd 4]
  binary scan $zRightChild I iRightChild
  seek $fd [expr 1024*($iRightChild-1)+3]
  puts -nonewline $fd 
