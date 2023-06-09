

    PRAGMA encoding='UTF-16';
    CREATE TABLE t1(a);
    INSERT INTO t1 
    VALUES('0123456789aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ');
  

    SELECT julianday(a,a) FROM t1;
  
