

    CREATE TABLE parameters1(
       mountcnt    INT NOT NULL CHECK (typeof(mountcnt) == 'integer'),
       version     REAL NOT NULL
    );
    INSERT INTO parameters1(mountcnt, version) VALUES(1, 1.0);

    CREATE TABLE parameters2(
       mountcnt    INT NOT NULL CHECK (typeof(mountcnt) == 'integer'),
       version     REAL CHECK (typeof(version) == 'real')
    );
    INSERT INTO parameters2(mountcnt, version) VALUES(1, 1.0);
  


    UPDATE parameters1 SET mountcnt = mountcnt + 1;
    SELECT * FROM parameters1;
  


    UPDATE parameters2 SET mountcnt = mountcnt + 1;
    SELECT * FROM parameters2;
  
