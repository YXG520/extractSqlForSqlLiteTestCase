

    CREATE VIRTUAL TABLE x1 USING tcl(tcl_command);
  


    ALTER TABLE x1 RENAME TO x2;
    SELECT sql FROM sqlite_master WHERE name = 'x2'
  
