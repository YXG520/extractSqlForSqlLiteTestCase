
CREATE TABLE test1(f1 int, f2 int, f3 int, f4 int, f5 int)
CREATE INDEX [format index%02d $i] ON test1(f[expr {($i%5)+1}])
SELECT name FROM sqlite_master 
           WHERE type='index' AND tbl_name='test1'
           ORDER BY name


DROP TABLE test1
SELECT name FROM sqlite_master 
           WHERE type='index' AND tbl_name='test1'
           ORDER BY name
