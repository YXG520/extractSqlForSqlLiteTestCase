
SELECT coalesce(a,'xyz') FROM t2

SELECT coalesce(upper(a),'nil') FROM t2

SELECT coalesce(nullif(1,1),'nil')

SELECT coalesce(nullif(1,2),'nil')

SELECT coalesce(nullif(1,NULL),'nil')
