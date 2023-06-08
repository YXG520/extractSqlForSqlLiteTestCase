set using_proxy $value
  
pragma lock_status
select * from sqlite_master 
PRAGMA lock_proxy_file=":auto:";
      PRAGMA lock_proxy_file;
    
PRAGMA lock_proxy_file="notmine";
      select * from sqlite_master;
    
PRAGMA lock_proxy_file;
    
PRAGMA lock_proxy_file="mine";
      select * from sqlite_master;
    
