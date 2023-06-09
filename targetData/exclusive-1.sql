

    pragma locking_mode;
    pragma main.locking_mode;
    pragma temp.locking_mode;
  


    pragma locking_mode = exclusive;
  


    pragma locking_mode;
    pragma main.locking_mode;
    pragma temp.locking_mode;
  


    pragma locking_mode = normal;
  


    pragma locking_mode;
    pragma main.locking_mode;
    pragma temp.locking_mode;
  


    pragma locking_mode = invalid;
  


    pragma locking_mode;
    pragma main.locking_mode;
    pragma temp.locking_mode;
  


      pragma locking_mode = exclusive;
      ATTACH 'test2.db' as aux;
    

      pragma main.locking_mode;
      pragma aux.locking_mode;
    


      pragma main.locking_mode = normal;
    

      pragma main.locking_mode;
      pragma temp.locking_mode;
      pragma aux.locking_mode;
    


      pragma locking_mode;
    


      ATTACH 'test3.db' as aux2;
    

      pragma main.locking_mode;
      pragma aux.locking_mode;
      pragma aux2.locking_mode;
    


      pragma aux.locking_mode = normal;
    

      pragma main.locking_mode;
      pragma aux.locking_mode;
      pragma aux2.locking_mode;
    


      pragma locking_mode = normal;
    

      pragma main.locking_mode;
      pragma temp.locking_mode;
      pragma aux.locking_mode;
      pragma aux2.locking_mode;
    


      ATTACH 'test4.db' as aux3;
    

      pragma main.locking_mode;
      pragma temp.locking_mode;
      pragma aux.locking_mode;
      pragma aux2.locking_mode;
      pragma aux3.locking_mode;
    


      DETACH aux;
      DETACH aux2;
      DETACH aux3;
    
