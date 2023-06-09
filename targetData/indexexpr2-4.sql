

    CREATE TABLE t1(a,b,c,d,e,f);
    CREATE INDEX t1abc ON t1(refcnt(a+b+c));
  

INSERT INTO t1 VALUES(1,2,3,4,5,6);

UPDATE t1 SET b=b+1;

UPDATE t1 SET d=d+1;


    CREATE TABLE t2(a,b,c,d,e,f);
    INSERT INTO t2 VALUES(2,3,4,5,6,7);
    CREATE INDEX t2abc ON t2(a+b+c);
    CREATE INDEX t2cd ON t2(c*d);
    CREATE INDEX t2def ON t2(d,e+25*f);
    SELECT sqlite_master.name 
      FROM sqlite_master, explain('UPDATE t2 SET b=b+1')
     WHERE explain.opcode LIKE 'Open%'
       AND sqlite_master.rootpage=explain.p2
     ORDER BY 1;
  


    SELECT sqlite_master.name 
      FROM sqlite_master, explain('UPDATE t2 SET c=c+1')
     WHERE explain.opcode LIKE 'Open%'
       AND sqlite_master.rootpage=explain.p2
     ORDER BY 1;
  


    SELECT sqlite_master.name 
      FROM sqlite_master, explain('UPDATE t2 SET c=c+1, f=NULL')
     WHERE explain.opcode LIKE 'Open%'
       AND sqlite_master.rootpage=explain.p2
     ORDER BY 1;
  
