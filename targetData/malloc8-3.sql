

  PRAGMA encoding='UTF-16';
  CREATE TABLE t1(a);
  INSERT INTO t1 
  VALUES('0123456789aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ');


  SELECT length(a), substr(a, 4, 4) FROM t1;

