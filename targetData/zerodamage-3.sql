

       PRAGMA journal_mode=WAL;
    

       UPDATE t1 SET y=randomblob(50) WHERE x=124;
    


       PRAGMA synchronous=FULL;
       UPDATE t1 SET y=randomblob(50) WHERE x=124;
    
