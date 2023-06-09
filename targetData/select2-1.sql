
SELECT DISTINCT f1 FROM tbl1 ORDER BY f1

    set f1 $data(f1)
    lappend r $f1:
    set sql2 "SELECT f2 FROM tbl1 WHERE f1=$f1 ORDER BY f2"
    db eval $sql2 d2 {
      lappend r $d2(f2)
    

SELECT DISTINCT f1 FROM tbl1 WHERE f1>3 AND f1<5

    set f1 $data(f1)
    lappend r $f1:
    set sql2 "SELECT f2 FROM tbl1 WHERE f1=$f1 ORDER BY f2"
    db eval $sql2 d2 {
      lappend r $d2(f2)
    
