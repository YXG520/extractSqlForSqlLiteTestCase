

      PRAGMA lock_proxy_file="mylittleproxy";
      select * from sqlite_master;
    

      PRAGMA lock_proxy_file;
    


      PRAGMA lock_proxy_file="mylittleproxy";
    


      PRAGMA lock_proxy_file=":auto:";
      select * from sqlite_master;
    

      PRAGMA lock_proxy_file;
    


      PRAGMA lock_proxy_file="myotherproxy";
    

      select * from sqlite_master;
    


      PRAGMA lock_proxy_file="myoriginalproxy";
      PRAGMA lock_proxy_file="myotherproxy";
      PRAGMA lock_proxy_file;
    


      PRAGMA lock_proxy_file=":auto:";
      PRAGMA lock_proxy_file;
    


      PRAGMA lock_proxy_file=":auto:";
      PRAGMA lock_proxy_file;
    

 
        PRAGMA lock_proxy_file=":auto:";
        select * from sqlite_master;
      

 select * from sqlite_master 


      PRAGMA lock_proxy_file="yetanotherproxy";
      PRAGMA lock_proxy_file;
    


      create table mine(x);
    


      PRAGMA lock_proxy_file=":auto:";
      PRAGMA lock_proxy_file;
    
