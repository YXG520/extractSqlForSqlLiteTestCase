uplevel db eval [list $zSql]
  #puts stderr "$zSql ;"

PRAGMA incremental_vacuum
PRAGMA incremental_vacuum
SELECT count(*) FROM t1
PRAGMA synchronous = off 
PRAGMA cache_size = 10 
