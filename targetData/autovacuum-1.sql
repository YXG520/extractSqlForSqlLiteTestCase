

    PRAGMA auto_vacuum = 1;
    CREATE TABLE av1(a);
    CREATE INDEX av1_idx ON av1(a);
  

    execsql "INSERT INTO av1 (oid, a) VALUES($i, '[make_str $i $ENTRY_LEN]')"
    lappend ::tbl_data [make_str $i $ENTRY_LEN]
  


        pragma integrity_check
      


        DELETE FROM av1 WHERE oid = [join $delete 


          pragma integrity_check
        


        select a from av1 order by rowid
      

