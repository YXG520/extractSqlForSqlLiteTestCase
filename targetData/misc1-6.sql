

    CREATE TABLE t4(
      abort, asc, begin, cluster, conflict, copy, delimiters, desc, end,
      explain, fail, ignore, key, offset, pragma, replace, temp,
      vacuum, view
    );
  


    INSERT INTO t4
       VALUES(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19);
  


    SELECT * FROM t4
  


    SELECT abort+asc,max(key,pragma,temp) FROM t4
  
