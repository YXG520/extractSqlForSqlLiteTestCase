

      ATTACH 'test2.db' AS aux;
    


      pragma aux.synchronous;
    


      pragma aux.synchronous = OFF;
      pragma aux.synchronous;
      pragma synchronous;
    


      pragma aux.synchronous = ON;
      pragma synchronous;
      pragma aux.synchronous;
    
