

  create table t_distinct_bug (a, b, c);
  insert into t_distinct_bug values ('1', '1', 'a');
  insert into t_distinct_bug values ('1', '2', 'b');
  insert into t_distinct_bug values ('1', '3', 'c');
  insert into t_distinct_bug values ('1', '1', 'd');
  insert into t_distinct_bug values ('1', '2', 'e');
  insert into t_distinct_bug values ('1', '3', 'f');



  select a from (select distinct a, b from t_distinct_bug)



  CREATE VIEW v42b AS SELECT DISTINCT a, b FROM t_distinct_bug;
  SELECT a FROM v42b;



  select a, udf() from (select distinct a, b from t_distinct_bug)

