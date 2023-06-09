

      sqlite3_shutdown
      sqlite3_config_uri 1
      sqlite3_multiplex_initialize crash 1
      sqlite3 db file:test1.db?8_3_names=1
      sqlite3_multiplex_control db main chunk_size [expr 64*1024]
    


    PRAGMA main.integrity_check;
    PRAGMA aux.integrity_check;
  
