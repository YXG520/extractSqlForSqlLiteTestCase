

    CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    INSERT INTO t1 VALUES(3,4);
    SELECT * FROM t1;
  


    CREATE TABLE t2(x,y);
    INSERT INTO t2 VALUES(1,'x');
    INSERT INTO t2 VALUES(2,'y');
    SELECT * FROM t2;
  


    ATTACH DATABASE 'test2.db' AS two;
    SELECT * FROM two.t2;
  







    SELECT * FROM t2;
  


    DETACH DATABASE two;
    SELECT * FROM t1;
  


    SELECT * FROM t2;
  


    SELECT * FROM two.t2;
  


    ATTACH DATABASE 'test3.db' AS three;
  


    SELECT * FROM three.sqlite_master;
  


    DETACH DATABASE [three];
  


    ATTACH 'test.db' AS db2;
    ATTACH 'test.db' AS db3;
    ATTACH 'test.db' AS db4;
    ATTACH 'test.db' AS db5;
    ATTACH 'test.db' AS db6;
    ATTACH 'test.db' AS db7;
    ATTACH 'test.db' AS db8;
    ATTACH 'test.db' AS db9;
  
PRAGMA database_list

    lappend list $idx $name
  



    ATTACH 'test.db' as db2;
  



    ATTACH 'test.db' as db5;
  


    ATTACH 'test.db' as db9;
  


  ATTACH 'test.db' as main;



      ATTACH 'test.db' as temp;
    


  ATTACH 'test.db' as MAIN;



    ATTACH 'test.db' as db10;
    ATTACH 'test.db' as db11;
  


      ATTACH 'test.db' as db12;
    



    DETACH db5;
  

select * from temp.sqlite_master


    ATTACH 'test.db' as db12;
  


      ATTACH 'test.db' as db13;
    



    DETACH "db14";
  


    DETACH db12;
  


    DETACH db12;
  


    DETACH main;
  


      DETACH Temp;
    


      DETACH Temp;
    


    DETACH db11;
    DETACH db10;
    DETACH db9;
    DETACH db8;
    DETACH db7;
    DETACH db6;
    DETACH db4;
    DETACH db3;
    DETACH db2;
  


