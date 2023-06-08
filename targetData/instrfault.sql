CREATE TABLE t1(n, h);
    INSERT INTO t1 VALUES($::NEEDLE, $::HAYSTACK);
  
SELECT instr(h, n) FROM t1 
SELECT instr(h, n) FROM t1 
SELECT instr($::HAYSTACK, $::NEEDLE) FROM t1 
SELECT instr($::HAYSTACK, $::NEEDLE) FROM t1 
error "out of memory" 
error "out of memory" 
CREATE TABLE h1(a, b);
    INSERT INTO h1 VALUES('abcdefg%200hijkl', randomblob(200));
    INSERT INTO h1 SELECT b, a FROM h1;
  
SELECT rowid FROM h1 WHERE instr(a,b) 
