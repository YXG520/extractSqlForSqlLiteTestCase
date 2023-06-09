

  PRAGMA encoding='UTF-16';
  CREATE TABLE t1(a);
  INSERT INTO t1 
  VALUES('0123456789aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ');


  SELECT replace(a,'x','y'), replace('x',a,'y'), replace('x','y',a)
    FROM t1;

