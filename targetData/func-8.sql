
EXPLAIN SELECT sum(a) FROM t2;

      SELECT sum(a), count(a), round(avg(a),2), min(a), max(a), count(*) FROM t2;
    

EXPLAIN SELECT sum(a) FROM t2;

      SELECT sum(a), count(a), avg(a), min(a), max(a), count(*) FROM t2;
    


    SELECT max('z+'||a||'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOP') FROM t2;
  


      CREATE TEMP TABLE t3 AS SELECT a FROM t2 ORDER BY a DESC;
      SELECT min('z+'||a||'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOP') FROM t3;
    


      CREATE TABLE t3 AS SELECT a FROM t2 ORDER BY a DESC;
      SELECT min('z+'||a||'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOP') FROM t3;
    


    SELECT max('z+'||a||'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOP') FROM t3;
  


      SELECT sum(x) FROM (SELECT '9223372036' || '854775807' AS x
                          UNION ALL SELECT -9223372036854775807)
    


      SELECT typeof(sum(x)) FROM (SELECT '9223372036' || '854775807' AS x
                          UNION ALL SELECT -9223372036854775807)
    


      SELECT typeof(sum(x)) FROM (SELECT '9223372036' || '854775808' AS x
                          UNION ALL SELECT -9223372036854775807)
    


      SELECT sum(x)>0.0 FROM (SELECT '9223372036' || '854775808' AS x
                          UNION ALL SELECT -9223372036850000000)
    


      SELECT sum(x)>0 FROM (SELECT '9223372036' || '854775808' AS x
                          UNION ALL SELECT -9223372036850000000)
    
