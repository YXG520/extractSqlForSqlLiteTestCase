

    SELECT b FROM t600, carray(inttoptr($PTR1),5) WHERE a=value;
  


    SELECT b FROM t600 WHERE a IN carray(inttoptr($PTR1),5,'int32');
  


    SELECT b FROM t600 WHERE a IN carray(inttoptr($PTR1),4,'int32');
  


  SELECT b FROM t600 WHERE a IN carray(inttoptr($PTR1),5,'int33');



    SELECT b FROM t600, carray(inttoptr($PTR2),5,'int64') WHERE a=value;
  


    SELECT remember(123,inttoptr($PTR2));
    SELECT value FROM carray(inttoptr($PTR2),5,'int64');
  


    SELECT remember(987,inttoptr($PTR3));
    SELECT value FROM carray(inttoptr($PTR2),5,'int64');
  


    SELECT b FROM t600, carray(inttoptr($PTR4),5,'double') WHERE a=value;
  


    SELECT b FROM t600, carray(inttoptr($PTR5),5,'char*')
     WHERE a=trim(value,'x');
  


    SELECT aa.value, bb.value, '|'
      FROM carray(inttoptr($PTR4),5,'double') AS aa
      JOIN carray(inttoptr($PTR5),5,'char*') AS bb ON aa.rowid=bb.rowid;
  


    SELECT aa.value, bb.value, '|'
      FROM carray(inttoptr($PTR4),5,'double') AS aa
      LEFT JOIN carray(inttoptr($PTR5),5,'char*') AS bb ON aa.rowid=bb.rowid;
  
