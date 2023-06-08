pragma mmap_size = 268435456;

pragma encoding = 'UTF-16'

pragma locking_mode = 'exclusive'

pragma locking_mode = 'exclusive';
  pragma journal_mode = TRUNCATE;

pragma journal_mode = persist

pragma journal_mode = truncate

pragma journal_mode = persist

pragma journal_mode = persist

pragma journal_mode = persist

pragma auto_vacuum = 1

pragma auto_vacuum = 1

pragma journal_mode = 'memory'

#     set options [lrange $args 0 [expr {[llength $args]-2

set ok 0
      foreach p $::env(SQLITE_TEST_PATTERN_LIST) {
        set p [string map {% *
