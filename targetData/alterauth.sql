lappend ::auth [concat $type [lrange $args 0 3]]
  
CREATE TABLE t1(a, b, c); 
ALTER TABLE t1 RENAME TO t2 

ALTER TABLE t2 RENAME c TO ccc 

ALTER TABLE t2 ADD COLUMN d 

return SQLITE_DENY
  
ALTER TABLE t2 RENAME TO t3 
ALTER TABLE t2 RENAME d TO ddd 
ALTER TABLE t2 ADD COLUMN e 
