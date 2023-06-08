sqlite3_step $::STMT
      set rc [sqlite3_finalize $::STMT]
    
database schema has changed
