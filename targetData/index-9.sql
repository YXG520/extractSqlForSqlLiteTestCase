
CREATE TABLE tab1(a int)
EXPLAIN CREATE INDEX idx1 ON tab1(a)
SELECT name FROM sqlite_master WHERE tbl_name='tab1'

CREATE INDEX idx1 ON tab1(a)
SELECT name FROM sqlite_master WHERE tbl_name='tab1' ORDER BY name
