

  CREATE TABLE tab(
    id INTEGER PRIMARY KEY,
    minChild INTEGER REFERENCES t1,
    maxChild INTEGER REFERENCES t1,
    x INTEGER
  );
  EXPLAIN QUERY PLAN
  SELECT t4.x
    FROM tab AS t0, tab AS t1, tab AS t2, tab AS t3, tab AS t4
   WHERE t0.id=0
     AND t1.id BETWEEN t0.minChild AND t0.maxChild
     AND t2.id BETWEEN t1.minChild AND t1.maxChild
     AND t3.id BETWEEN t2.minChild AND t2.maxChild
     AND t4.id BETWEEN t3.minChild AND t3.maxChild
  ORDER BY t4.x;



  EXPLAIN QUERY PLAN
  SELECT t4.x
    FROM tab AS t0a, tab AS t0b,
         tab AS t1a, tab AS t1b,
         tab AS t2a, tab AS t2b,
         tab AS t3a, tab AS t3b,
         tab AS t4
   WHERE 1
     AND t0a.id=1
     AND t1a.id BETWEEN t0a.minChild AND t0a.maxChild
     AND t2a.id BETWEEN t1a.minChild AND t1a.maxChild
     AND t3a.id BETWEEN t2a.minChild AND t2a.maxChild
     AND t0b.id=2
     AND t1b.id BETWEEN t0b.minChild AND t0b.maxChild
     AND t2b.id BETWEEN t1b.minChild AND t1b.maxChild
     AND t3b.id BETWEEN t2b.minChild AND t2b.maxChild
     AND t4.id BETWEEN t3a.minChild AND t3b.maxChild
  ORDER BY t4.x;

