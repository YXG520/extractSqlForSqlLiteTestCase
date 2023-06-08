temp n1
main n2
at1  n3
at2  n4
main n1
temp n1
at1 n1
at2 n1
no such table: xxx.n1
main n1
temp n1
at1 n1
at2 n1
no such table: temp.n2
main n2
at1 n2
at2 n2
at1  n3
at2  n4
ATTACH 'file.db' AS aux;
  CREATE TABLE t1(x, y);
  CREATE TEMP TABLE t1(x, y);
  CREATE TABLE aux.t1(x, y);

DROP TABLE t1 
no such table: temp.t1


DROP TABLE t1 
no such table: main.t1

DROP TABLE t1 
no such table: aux.t1
