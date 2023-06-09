
file:$::fa?mode=rw$::vf

    DROP TABLE t1;
    PRAGMA cache_size=10;
    CREATE TABLE ri (i INTEGER);
    BEGIN;
  

      INSERT INTO ri VALUES ($r),($s),($t),($u),($v)
    

    COMMIT;
    SELECT integrity_check as ic FROM pragma_integrity_check();
  

    SELECT count(*) as ic FROM ri;
    DELETE FROM ri WHERE (i % 50) <> 25;
    SELECT integrity_check as ic FROM pragma_integrity_check();
    VACUUM;
    SELECT integrity_check as ic FROM pragma_integrity_check();
    SELECT count(*) as ic FROM ri;
  

file:$::fa?mode=rw$::vf

    SELECT integrity_check as ic FROM pragma_integrity_check();
  

file:$::fa?mode=rw$::vf
 BEGIN 
 INSERT INTO ri VALUES (randomblob(1500)) 
 COMMIT 

    SELECT integrity_check as ic FROM pragma_integrity_check();
  

file:$::fa?mode=rw$::vf

    SELECT integrity_check as ic FROM pragma_integrity_check();
  

file:$::fa?mode=rw$::vf

    DELETE FROM ri WHERE rowid % 8 <> 0;
    SELECT integrity_check as ic FROM pragma_integrity_check();
    VACUUM;
    SELECT integrity_check as ic FROM pragma_integrity_check();
  
file:$::fa?mode=rw$::vf

    SELECT integrity_check as ic FROM pragma_integrity_check();
  
