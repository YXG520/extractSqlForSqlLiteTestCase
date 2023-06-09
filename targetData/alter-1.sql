

    CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    CREATE TABLE [t1'x1](c UNIQUE, b PRIMARY KEY);
    INSERT INTO [t1'x1] VALUES(3,4);
    CREATE INDEX t1i1 ON T1(B);
    CREATE INDEX t1i2 ON t1(a,b);
    CREATE INDEX i3 ON [t1'x1](b,c);
    CREATE $::temp TABLE "temp table"(e,f,g UNIQUE);
    CREATE INDEX i2 ON [temp table](f);
    INSERT INTO [temp table] VALUES(5,6,7);
  

    SELECT 't1', * FROM t1;
    SELECT 't1''x1', * FROM "t1'x1";
    SELECT * FROM [temp table];
  


    CREATE $::temp TABLE objlist(type, name, tbl_name);
    INSERT INTO objlist SELECT type, name, tbl_name 
        FROM sqlite_master WHERE NAME!='objlist';
  

      INSERT INTO objlist SELECT type, name, tbl_name 
          FROM temp.sqlite_master WHERE NAME!='objlist';
    

    SELECT type, name, tbl_name FROM objlist ORDER BY tbl_name, type desc, name;
  
temp table


    ALTER TABLE [T1] RENAME to [-t1-];
    ALTER TABLE "t1'x1" RENAME TO T2;
    ALTER TABLE [temp table] RENAME to TempTab;
  


    SELECT 't1', * FROM [-t1-];
    SELECT 't2', * FROM t2;
    SELECT * FROM temptab;
  


    DELETE FROM objlist;
    INSERT INTO objlist SELECT type, name, tbl_name
        FROM sqlite_master WHERE NAME!='objlist';
  

    INSERT INTO objlist SELECT type, name, tbl_name 
        FROM sqlite_temp_master WHERE NAME!='objlist';
  

    SELECT type, name, tbl_name FROM objlist ORDER BY tbl_name, type desc, name;
  
TempTab


      CREATE TEMP TABLE objlist(type, name, tbl_name);
      INSERT INTO objlist SELECT type, name, tbl_name FROM sqlite_master;
      INSERT INTO objlist 
          SELECT type, name, tbl_name FROM temp.sqlite_master 
          WHERE NAME!='objlist';
      SELECT type, name, tbl_name FROM objlist 
          ORDER BY tbl_name, type desc, name;
    

    DROP TABLE TempTab;
  

SELECT substr(name,1,3) FROM sqlite_master


    ALTER TABLE [-t1-] RENAME to [*t1*];
    ALTER TABLE T2 RENAME TO [<t2>];
  

    DELETE FROM objlist;
    INSERT INTO objlist SELECT type, name, tbl_name
        FROM sqlite_master WHERE NAME!='objlist';
  

    INSERT INTO objlist SELECT type, name, tbl_name 
        FROM sqlite_temp_master WHERE NAME!='objlist';
  

    SELECT type, name, tbl_name FROM objlist ORDER BY tbl_name, type desc, name;
  


      ATTACH 'test2.db' AS aux;
    


      CREATE TABLE t4(a PRIMARY KEY, b, c);
      CREATE TABLE aux.t4(a PRIMARY KEY, b, c);
      CREATE INDEX i4 ON t4(b);
      CREATE INDEX aux.i4 ON t4(b);
    


      INSERT INTO t4 VALUES('main', 'main', 'main');
      INSERT INTO aux.t4 VALUES('aux', 'aux', 'aux');
      SELECT * FROM t4 WHERE a = 'main';
    


      ALTER TABLE t4 RENAME TO t5;
      SELECT * FROM t4 WHERE a = 'aux';
    


      SELECT * FROM t5;
    


      SELECT * FROM t5 WHERE b = 'main';
    


      ALTER TABLE aux.t4 RENAME TO t5;
      SELECT * FROM aux.t5 WHERE b = 'aux';
    


    CREATE TABLE tbl1   (a, b, c);
    INSERT INTO tbl1 VALUES(1, 2, 3);
  


    SELECT * FROM tbl1;
  


    ALTER TABLE tbl1 RENAME TO tbl2;
    SELECT * FROM tbl2;
  


    DROP TABLE tbl2;
  
