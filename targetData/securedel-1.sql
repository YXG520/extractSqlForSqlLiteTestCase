
PRAGMA secure_delete;


    ATTACH 'test2.db' AS db2;
    PRAGMA main.secure_delete=ON;
    PRAGMA db2.secure_delete;
  


    PRAGMA main.secure_delete=OFF;
    PRAGMA db2.secure_delete;
  


    PRAGMA secure_delete=OFF;
    PRAGMA db2.secure_delete;
  


    PRAGMA secure_delete=ON;
    PRAGMA db2.secure_delete;
  


    PRAGMA secure_delete=FAST;
    PRAGMA db2.secure_delete;
  


    PRAGMA secure_delete=ON;
    PRAGMA db2.secure_delete;
  


    PRAGMA main.secure_delete=FAST;
    PRAGMA db2.secure_delete;
  


    PRAGMA main.secure_delete=ON;
    PRAGMA db2.secure_delete;
  
