
SELECT offsets(t1) FROM t1 WHERE content MATCH 'three NEAR/1 one'

SELECT offsets(t1) FROM t1 WHERE content MATCH 'one NEAR/1 three'

SELECT offsets(t1) FROM t1 WHERE content MATCH 'three NEAR/1 two'

SELECT offsets(t1) FROM t1 WHERE content MATCH 'three NEAR/2 two'

SELECT offsets(t1) FROM t1 WHERE content MATCH 'two NEAR/2 three'


    SELECT offsets(t1) FROM t1 WHERE content MATCH 'three NEAR/0 "two four"'
  


    SELECT offsets(t1) FROM t1 WHERE content MATCH '"two four" NEAR/0 three'
