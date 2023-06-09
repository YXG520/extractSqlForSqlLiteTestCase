

    SELECT sqlite_compileoption_used();
  


    SELECT sqlite_compileoption_used(NULL);
  


    SELECT sqlite_compileoption_used("");
  


    SELECT sqlite_compileoption_used('');
  


    SELECT sqlite_compileoption_used(foo);
  


    SELECT sqlite_compileoption_used('THREADSAFE', 0);
  


    SELECT sqlite_compileoption_used(0);
  


    SELECT sqlite_compileoption_used('0');
  


    SELECT sqlite_compileoption_used(1.0);
  


    SELECT sqlite_compileoption_get();
  


    SELECT sqlite_compileoption_get(0, 0);
  


    SELECT sqlite_compileoption_used(sqlite_compileoption_get(0));
  


    SELECT sqlite_compileoption_get(0);
  

  PRAGMA compile_options;



      SELECT sqlite_compileoption_used($opt);
    


    SELECT sqlite_compileoption_get($N);
  


    SELECT sqlite_compileoption_get($N);
  
