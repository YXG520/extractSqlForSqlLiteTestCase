

    UPDATE t1 SET v='x' || -flt;
    UPDATE t1 SET v='x-2b' where v=='x-0.123';
    SELECT v FROM t1 ORDER BY v;
  


    SELECT v FROM t1 ORDER BY substr(v,2,999);
  


    SELECT v FROM t1 ORDER BY substr(v,2,999)+0.0;
  


    SELECT v FROM t1 ORDER BY substr(v,2,999) DESC;
  


    SELECT v FROM t1 ORDER BY substr(v,2,999)+0.0 DESC;
  
