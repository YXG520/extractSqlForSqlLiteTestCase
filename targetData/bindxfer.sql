upvar #0 $VALS vals
  upvar #0 $COLS cols
  set vals [list]
  set cols [list]

  set rc [sqlite3_step $stmt]
  for {set i 0
lappend cols [sqlite3_column_name $stmt $i]
  
lappend vals [sqlite3_column_text $stmt $i]
  
CREATE TABLE t1(a,b,c);
SELECT ?, ?, ?
SELECT ?, ?, ?


