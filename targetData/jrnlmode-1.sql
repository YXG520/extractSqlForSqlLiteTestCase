

    PRAGMA journal_mode;
    PRAGMA main.journal_mode;
    PRAGMA temp.journal_mode;
  


    PRAGMA journal_mode = persist;
  


    PRAGMA journal_mode;
    PRAGMA main.journal_mode;
    PRAGMA temp.journal_mode;
  


    PRAGMA journal_mode = off;
  


    PRAGMA journal_mode = off;
  


    PRAGMA journal_mode;
    PRAGMA main.journal_mode;
    PRAGMA temp.journal_mode;
  


    PRAGMA journal_mode = delete;
  


    PRAGMA journal_mode;
    PRAGMA main.journal_mode;
    PRAGMA Temp.journal_mode;
  


    PRAGMA journal_mode = truncate;
  


    PRAGMA journal_mode;
    PRAGMA main.journal_mode;
    PRAGMA temp.journal_mode;
  


    PRAGMA journal_mode = off;
    PRAGMA journal_mode = invalid;
  


      PRAGMA journal_mode = PERSIST;
      ATTACH ':memory:' as aux1;
    

      PRAGMA main.journal_mode;
      PRAGMA aux1.journal_mode;
    


      PRAGMA main.journal_mode = OFF;
    

      PRAGMA main.journal_mode;
      PRAGMA temp.journal_mode;
      PRAGMA aux1.journal_mode;
    


      PRAGMA journal_mode;
    


      ATTACH ':memory:' as aux2;
    

      PRAGMA main.journal_mode;
      PRAGMA aux1.journal_mode;
      PRAGMA aux2.journal_mode;
    


      PRAGMA aux1.journal_mode = DELETE;
    

      PRAGMA main.journal_mode;
      PRAGMA aux1.journal_mode;
      PRAGMA aux2.journal_mode;
    


      PRAGMA journal_mode = delete;
    

      PRAGMA main.journal_mode;
      PRAGMA temp.journal_mode;
      PRAGMA aux1.journal_mode;
      PRAGMA aux2.journal_mode;
    


      ATTACH ':memory:' as aux3;
    

      PRAGMA main.journal_mode;
      PRAGMA temp.journal_mode;
      PRAGMA aux1.journal_mode;
      PRAGMA aux2.journal_mode;
      PRAGMA aux3.journal_mode;
    


      PRAGMA journal_mode = TRUNCATE;
    

      PRAGMA main.journal_mode;
      PRAGMA temp.journal_mode;
      PRAGMA aux1.journal_mode;
      PRAGMA aux2.journal_mode;
      PRAGMA aux3.journal_mode;
    


      DETACH aux1;
      DETACH aux2;
      DETACH aux3;
    
