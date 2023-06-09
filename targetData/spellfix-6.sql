

  SELECT word FROM t3 WHERE rowid = 10;



  SELECT word, distance FROM t3 WHERE rowid = 10;



  SELECT word, distance FROM t3 WHERE rowid = 10 AND word MATCH 'kiiner';


    if {[string range $sql 0 2] == "-- "

      lappend ::trace [string range $sql 3 end]
    
