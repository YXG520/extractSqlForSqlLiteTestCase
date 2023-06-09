

    CREATE TABLE t29(id INTEGER PRIMARY KEY, x, y);
    INSERT INTO t29 VALUES(1, 2, 3), (2, NULL, 4), (3, 4.5, 5);
    INSERT INTO t29 VALUES(4, randomblob(1000000), 6);
    INSERT INTO t29 VALUES(5, 'hello', 7);
  
SELECT typeof(x), length(x), typeof(y) FROM t29 ORDER BY id


SELECT typeof(+x) FROM t29 ORDER BY id


SELECT sum(length(x)) FROM t29



  CREATE TABLE t29b(a,b,c,d,e,f,g,h,i);
  INSERT INTO t29b 
   VALUES(1, hex(randomblob(2000)), null, 0, 1, '', zeroblob(0),'x',x'01');
  SELECT typeof(c), typeof(d), typeof(e), typeof(f),
         typeof(g), typeof(h), typeof(i) FROM t29b;



  SELECT length(f), length(g), length(h), length(i) FROM t29b;



  SELECT quote(f), quote(g), quote(h), quote(i) FROM t29b;

