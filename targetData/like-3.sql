
S



    PRAGMA case_sensitive_like=on;
    CREATE INDEX i1 ON t1(x);
  


S


S


S


S

S

S

S

S


S


S


S


PRAGMA case_sensitive_like=off;



    PRAGMA case_sensitive_like=on;
    DROP INDEX i1;
  


S


CREATE INDEX i1 ON t1(x);


PRAGMA case_sensitive_like=on;


PRAGMA case_sensitive_like=off;


S

S

S
