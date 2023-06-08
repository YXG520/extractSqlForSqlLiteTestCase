puts "$tail did not close all files: $sqlite_open_file_count"
    fail_test $tail
    set sqlite_open_file_count 0
  
