

    UPDATE t1 SET a=a+1000;
    UPDATE t2 SET b=b+2000;
    UPDATE t3 SET c=c+3000;
    UPDATE t4 SET d=d+4000;
  

    UPDATE t1 SET a=a+10000;
    UPDATE t2 SET b=b+20000;
    UPDATE t3 SET c=c+30000;
    UPDATE t4 SET d=d+40000;
  

    UPDATE t1 SET a=a+100000;
    UPDATE t2 SET b=b+200000;
    UPDATE t3 SET c=c+300000;
    UPDATE t4 SET d=d+400000;
  

    UPDATE t1 SET a=a+1000000;
    UPDATE t2 SET b=b+2000000;
    UPDATE t3 SET c=c+3000000;
    UPDATE t4 SET d=d+4000000;
  

     SELECT a FROM t1 UNION ALL
     SELECT b FROM t2 UNION ALL
     SELECT c FROM t3 UNION ALL
     SELECT d FROM t4;
  


     SELECT a FROM t1 UNION ALL
     SELECT b FROM t2 UNION ALL
     SELECT d FROM t4 UNION ALL
     SELECT c FROM t3;
  


     SELECT a FROM t1 UNION ALL
     SELECT c FROM t3 UNION ALL
     SELECT b FROM t2 UNION ALL
     SELECT d FROM t4;
  


     SELECT a FROM t1 UNION ALL
     SELECT c FROM t3 UNION ALL
     SELECT d FROM t4 UNION ALL
     SELECT b FROM t2;
  
