

    CREATE TABLE t1(a, b);
    CREATE TABLE t2(p, q);
    CREATE TABLE t3(x, y);
    
    INSERT INTO t1 VALUES(111,'one');
    INSERT INTO t1 VALUES(222,'two');
    INSERT INTO t1 VALUES(333,'three');
    
    INSERT INTO t2 VALUES(1,111);
    INSERT INTO t2 VALUES(2,222);
    INSERT INTO t2 VALUES(4,444);
    CREATE INDEX t2i1 ON t2(p);
    
    INSERT INTO t3 VALUES(999,'nine');
    CREATE INDEX t3i1 ON t3(x);
    
    SELECT * FROM t1, t2 LEFT JOIN t3 ON q=x WHERE p=2 AND a=q;
  



    CREATE TABLE parent1(parent1key, child1key, Child2key, child3key);
    CREATE TABLE child1 ( child1key NVARCHAR, value NVARCHAR );
    CREATE UNIQUE INDEX PKIDXChild1 ON child1 ( child1key );
    CREATE TABLE child2 ( child2key NVARCHAR, value NVARCHAR );

    INSERT INTO parent1(parent1key,child1key,child2key)
       VALUES ( 1, 'C1.1', 'C2.1' );
    INSERT INTO child1 ( child1key, value ) VALUES ( 'C1.1', 'Value for C1.1' );
    INSERT INTO child2 ( child2key, value ) VALUES ( 'C2.1', 'Value for C2.1' );

    INSERT INTO parent1 ( parent1key, child1key, child2key )
       VALUES ( 2, 'C1.2', 'C2.2' );
    INSERT INTO child2 ( child2key, value ) VALUES ( 'C2.2', 'Value for C2.2' );

    INSERT INTO parent1 ( parent1key, child1key, child2key )
       VALUES ( 3, 'C1.3', 'C2.3' );
    INSERT INTO child1 ( child1key, value ) VALUES ( 'C1.3', 'Value for C1.3' );
    INSERT INTO child2 ( child2key, value ) VALUES ( 'C2.3', 'Value for C2.3' );

    SELECT parent1.parent1key, child1.value, child2.value
    FROM parent1
    LEFT OUTER JOIN child1 ON child1.child1key = parent1.child1key
    INNER JOIN child2 ON child2.child2key = parent1.child2key;
  


  set ::sqlite_sort_count 0
  set data [execsql $sql]
  set eqp [execsql "EXPLAIN QUERY PLAN $sql"]
  # puts eqp=$eqp
  foreach {a b c x
