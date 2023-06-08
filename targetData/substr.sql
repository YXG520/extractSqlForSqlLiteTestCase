CREATE TABLE t1(t text, b blob)

SELECT substr(t, $i1, $i2) FROM t1
    
SELECT substring($qstr, $i1, $i2)
    
SELECT hex(substr(b, $i1, $i2)) FROM t1
    
SELECT hex(substring(x'$hex', $i1, $i2))
    
SELECT substr(t, $idx) FROM t1
    
SELECT substring($qstr, $idx)
    
