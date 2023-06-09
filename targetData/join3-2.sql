
SELECT * FROM t1
, t$i
 $sep t[expr {$i+1}].x==t$i.x+1
