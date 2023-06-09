

    sqlite3_limit db SQLITE_LIMIT_LENGTH \
                    [expr {$::SQLITE_MAX_LENGTH/2


    sqlite3_limit db SQLITE_LIMIT_LENGTH -1
  


    sqlite3_limit db SQLITE_LIMIT_SQL_LENGTH \
                    [expr {$::SQLITE_MAX_SQL_LENGTH/2


    sqlite3_limit db SQLITE_LIMIT_SQL_LENGTH -1
  


    sqlite3_limit db SQLITE_LIMIT_COLUMN \
                    [expr {$::SQLITE_MAX_COLUMN/2


    sqlite3_limit db SQLITE_LIMIT_COLUMN -1
  


    sqlite3_limit db SQLITE_LIMIT_EXPR_DEPTH \
                    [expr {$::SQLITE_MAX_EXPR_DEPTH/2


    sqlite3_limit db SQLITE_LIMIT_EXPR_DEPTH -1
  


    sqlite3_limit db SQLITE_LIMIT_COMPOUND_SELECT \
                    [expr {$::SQLITE_MAX_COMPOUND_SELECT/2


    sqlite3_limit db SQLITE_LIMIT_COMPOUND_SELECT -1
  


    sqlite3_limit db SQLITE_LIMIT_VDBE_OP \
                    [expr {$::SQLITE_MAX_VDBE_OP/2


    sqlite3_limit db SQLITE_LIMIT_VDBE_OP -1
  


    sqlite3_limit db SQLITE_LIMIT_FUNCTION_ARG \
                    [expr {$::SQLITE_MAX_FUNCTION_ARG/2


    sqlite3_limit db SQLITE_LIMIT_FUNCTION_ARG -1
  


    sqlite3_limit db SQLITE_LIMIT_ATTACHED \
                    [expr {$::SQLITE_MAX_ATTACHED/2


    sqlite3_limit db SQLITE_LIMIT_ATTACHED -1
  


    sqlite3_limit db SQLITE_LIMIT_LIKE_PATTERN_LENGTH \
                    [expr {$::SQLITE_MAX_LIKE_PATTERN_LENGTH/2


    sqlite3_limit db SQLITE_LIMIT_LIKE_PATTERN_LENGTH -1
  


    sqlite3_limit db SQLITE_LIMIT_VARIABLE_NUMBER \
                    [expr {$::SQLITE_MAX_VARIABLE_NUMBER/2


    sqlite3_limit db SQLITE_LIMIT_VARIABLE_NUMBER -1
  
