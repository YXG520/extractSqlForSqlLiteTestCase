

    PRAGMA encoding=UTF16;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(null), (''), (1), (2.25), ('hello'), (x'807f');
    CREATE TABLE t3(x,y);
    INSERT INTO t3 VALUES(1,null), (2,''), (3,1),
                         (4,2.25), (5,'hello'), (6,x'807f');
  



    CREATE TABLE t1(x INTEGER PRIMARY KEY, y);
    INSERT INTO t1 VALUES(1,null), (2,''), (3,1),
                         (4,2.25), (5,'hello'), (6,x'807f');
  


    CREATE TABLE [table](x INTEGER PRIMARY KEY DESC, y);
    INSERT INTO [table] VALUES(1,null), (12,''), (23,1),
                         (34,2.25), (45,'hello'), (56,x'807f');
  


    CREATE TABLE [ta<>ble](x INTEGER PRIMARY KEY, y) WITHOUT ROWID;
    INSERT INTO [ta<>ble] VALUES(1,null), (12,''), (23,1),
                         (34,2.25), (45,'hello'), (56,x'807f');
  


    CREATE TABLE t1(_ROWID_,rowid,oid);
    INSERT INTO t1 VALUES(1,null,'alpha'), (12,'',99), (23,1,x'b0b1b2');
  


    CREATE TABLE t1(x INTEGER PRIMARY KEY, y);
    INSERT INTO t1 VALUES(1,null), (2,''), (3,1),
                         (4,2.25), (5,'hello'), (6,x'807f');
  






    PRAGMA encoding=UTF8;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(null), (''), (1), (2.25), ('hello'), (x'807f');
  


    CREATE TABLE t2(x,y);
    INSERT INTO t2 VALUES(null, ''), (1, 2.25), ('hello', x'807f');
  



    CREATE TABLE tcl1(x);
    INSERT INTO tcl1 VALUES('"'), ('['), (']'), ('\{'), ('\

