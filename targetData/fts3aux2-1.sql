

  CREATE VIRTUAL TABLE t1 USING fts4(a, b, languageid=l);
  INSERT INTO t1(a, b, l) VALUES
    ('zero zero', 'zero zero', 0),
    ('one two', 'three four', 1),
    ('five six', 'seven eight', 2)
  ;
  CREATE VIRTUAL TABLE terms USING fts4aux(t1);




  SELECT * FROM terms;



  SELECT * FROM terms WHERE languageid='';



  SELECT * FROM terms WHERE languageid=-1;



  SELECT * FROM terms WHERE languageid=9223372036854775807;



  SELECT * FROM terms WHERE languageid=-9223372036854775808;



  SELECT * FROM terms WHERE languageid=NULL;












