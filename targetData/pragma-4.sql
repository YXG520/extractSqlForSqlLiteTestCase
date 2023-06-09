

    ATTACH 'test2.db' AS aux;
    pragma aux.cache_size;
    pragma aux.default_cache_size;
  


    pragma aux.cache_size = 50;
    pragma aux.cache_size;
    pragma aux.default_cache_size;
  


    pragma aux.default_cache_size = 456;
    pragma aux.cache_size;
    pragma aux.default_cache_size;
  


    pragma cache_size;
    pragma default_cache_size;
  


    DETACH aux;
    ATTACH 'test3.db' AS aux;
    pragma aux.cache_size;
    pragma aux.default_cache_size;
  


    DETACH aux;
    ATTACH 'test2.db' AS aux;
    pragma aux.cache_size;
    pragma aux.default_cache_size;
  
