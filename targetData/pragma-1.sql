

    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  


    PRAGMA synchronous=OFF;
    PRAGMA cache_size=1234;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  


    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  


    PRAGMA synchronous=OFF;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  


    PRAGMA cache_size=-4321;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  


    PRAGMA synchronous=ON;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  


    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  


    PRAGMA default_cache_size=-123;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  


    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  


      VACUUM;
      PRAGMA cache_size;
      PRAGMA default_cache_size;
      PRAGMA synchronous;
    


    PRAGMA synchronous=NORMAL;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  


    PRAGMA synchronous=EXTRA;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  


    PRAGMA synchronous=FULL;
    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  


    PRAGMA cache_size;
    PRAGMA default_cache_size;
    PRAGMA synchronous;
  


    PRAGMA synchronous=0;
    PRAGMA synchronous;
  


    PRAGMA synchronous=2;
    PRAGMA synchronous;
  


    PRAGMA synchronous=4;
    PRAGMA synchronous;
  


    PRAGMA synchronous=3;
    PRAGMA synchronous;
  


    PRAGMA synchronous=8;
    PRAGMA synchronous;
  


    PRAGMA synchronous=10;
    PRAGMA synchronous;
  


  PRAGMA default_cache_size = 0;



  PRAGMA default_cache_size;



  PRAGMA default_cache_size = -500;



  PRAGMA default_cache_size;



  PRAGMA default_cache_size = 500;



  PRAGMA default_cache_size;



  PRAGMA default_cache_size;



      PRAGMA vdbe_listing=YES;
      PRAGMA vdbe_listing;
    


      PRAGMA vdbe_listing=NO;
      PRAGMA vdbe_listing;
    


    PRAGMA parser_trace=ON;
    PRAGMA parser_trace=OFF;
  


    PRAGMA bogus = -1234;  -- Parsing of negative values
  
