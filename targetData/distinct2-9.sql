

  CREATE TABLE t9(v);
  INSERT INTO t9 VALUES 
    ('abcd'), ('Abcd'), ('aBcd'), ('ABcd'), ('abCd'), ('AbCd'), ('aBCd'), 
    ('ABCd'), ('abcD'), ('AbcD'), ('aBcD'), ('ABcD'), ('abCD'), ('AbCD'), 
    ('aBCD'), ('ABCD'),
    ('wxyz'), ('Wxyz'), ('wXyz'), ('WXyz'), ('wxYz'), ('WxYz'), ('wXYz'), 
    ('WXYz'), ('wxyZ'), ('WxyZ'), ('wXyZ'), ('WXyZ'), ('wxYZ'), ('WxYZ'), 
    ('wXYZ'), ('WXYZ');



  SELECT DISTINCT v COLLATE NOCASE, v FROM t9 ORDER BY +v;



  CREATE INDEX i9 ON t9(v COLLATE NOCASE, v);
  ANALYZE;

  SELECT DISTINCT v COLLATE NOCASE, v FROM t9 ORDER BY +v;

