INSERT INTO t1(docid, a, b, c) VALUES($rowid, $a, $b, $c) 
DELETE FROM t1 WHERE rowid = $rowid 
uplevel [list do_select_test $tn.asc "$sql ORDER BY docid ASC" $res]
  uplevel [list do_select_test $tn.desc "$sql ORDER BY docid DESC" \
    [lsort -int -dec $res]
  ]

DROP TABLE t1 
