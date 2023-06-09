

    PRAGMA compile_options();
  


    PRAGMA compile_options(NULL);
  


    PRAGMA compile_options *;
  


    PRAGMA compile_options;
  


    PRAGMA compile_options;
  


      SELECT sqlite_compileoption_used($opt)
    


    SELECT sqlite_compileoption_used('SQLITE_THREADSAFE');
  


    SELECT sqlite_compileoption_used('THREADSAFE');
  


    SELECT sqlite_compileoption_used("THREADSAFE");
  


    SELECT sqlite_compileoption_used('THREADSAFE=0');
  

    SELECT sqlite_compileoption_used('THREADSAFE=1');
  

    SELECT sqlite_compileoption_used('THREADSAFE=2');
  


    SELECT sqlite_compileoption_used('THREADSAFE=');
  


    SELECT sqlite_compileoption_used('SQLITE_OMIT_COMPILEOPTION_DIAGS');
  


    SELECT sqlite_compileoption_used('OMIT_COMPILEOPTION_DIAGS');
  
