

  CREATE TABLE t(i,j,k,m,n);
  CREATE INDEX ijk ON t(i,j,k);
  CREATE INDEX jmn ON t(j,m,n);

  INSERT INTO t VALUES(3, 3, 'three', 3, 'tres');
  INSERT INTO t VALUES(2, 2, 'two', 2, 'dos');
  INSERT INTO t VALUES(1, 1, 'one', 1, 'uno');
  INSERT INTO t VALUES(4, 4, 'four', 4, 'cuatro');



  SELECT k FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2);



  SELECT k FROM t WHERE (i=1 AND j=1) OR (+i=2 AND j=2);



  SELECT n FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2);



  SELECT k, n FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2);



  SELECT k FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2) OR (i=3 AND j=3);



  SELECT n FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2) OR (i=3 AND j=3);



  SELECT k FROM t WHERE (i=1 AND j=1) OR (j=2 AND m=2);



  SELECT k FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2) OR (j=3 AND m=3);



  SELECT n FROM t WHERE (i=1 AND j=1) OR (i=2 AND j=2) OR (j=3 AND m=3);



  SELECT k FROM t WHERE (i=1 AND j=1) OR (j=2 AND m=2) OR (i=3 AND j=3);



  SELECT n FROM t WHERE (i=1 AND j=1) OR (j=2 AND m=2) OR (i=3 AND j=3);



  SELECT k FROM t WHERE (j=1 AND m=1) OR (i=2 AND j=2) OR (i=3 AND j=3);



  SELECT k FROM t WHERE (i=1 AND j=1) OR (j=2 AND i=2) OR (i=3 AND j=3);



  SELECT k FROM t WHERE (i=1 AND j=2) OR (i=2 AND j=1) OR (i=3 AND j=4);



  SELECT k FROM t WHERE (i=1 AND (j=1 or j=2)) OR (i=3 AND j=3);


S
