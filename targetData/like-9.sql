
S

S


       SELECT x FROM t2 WHERE x LIKE '%78%25'
    


         EXPLAIN QUERY PLAN SELECT x FROM t2 WHERE x LIKE '%78%25'
      

INSERT INTO t2 VALUES('%ffhello')

       SELECT substr(x,2) AS x FROM t2 WHERE +x LIKE '%ff%25'
    


       SELECT substr(x,2) AS x FROM t2 WHERE x LIKE '%ff%25'
    


         EXPLAIN QUERY PLAN SELECT x FROM t2 WHERE x LIKE '%ff%25'
      


       SELECT x FROM t2 WHERE x LIKE '%fe%25'
    


         EXPLAIN QUERY PLAN SELECT x FROM t2 WHERE x LIKE '%fe%25'
      

    set ::sqlite_search_count 0
    set ::sqlite_like_count 0
    return [concat [execsql $sql] scan $::sqlite_search_count \
             like $::sqlite_like_count]
  
