
SELECT * FROM test1 WHERE f1<0

}
#   set r(*)
# 

PRAGMA empty_result_callbacks=on
SELECT * FROM test1 WHERE f1<0

}
  set r(*)


SELECT * FROM test1 WHERE f1<(select count(*) from test2)

}
    set r(*)
  

SELECT * FROM test1 ORDER BY f1

}
  set r(*)


SELECT * FROM test1 WHERE f1<0 ORDER BY f1

}
  set r(*)

