

    CREATE TABLE t1(
      a integer primary key,
      b int generated always as (a+5),
      c text    GENERATED   ALWAYS as (printf('%08x',a)),
      d Generated
        Always
        AS ('xyzzy'),
      e int                         Always default(5)
    );
    INSERT INTO t1(a) VALUES(5);
    SELECT name, type FROM pragma_table_xinfo('t1');
  
