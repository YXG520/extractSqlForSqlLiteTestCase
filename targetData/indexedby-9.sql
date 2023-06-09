

    CREATE TABLE maintable( id integer);
    CREATE TABLE joinme(id_int integer, id_text text);
    CREATE INDEX joinme_id_text_idx on joinme(id_text);
    CREATE INDEX joinme_id_int_idx on joinme(id_int);
  


    select * from maintable as m inner join
    joinme as j indexed by joinme_id_text_idx
    on ( m.id  = j.id_int)
  

 select * from maintable, joinme INDEXED by joinme_id_text_idx 
