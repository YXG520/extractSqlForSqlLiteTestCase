

    CREATE VIRTUAL TABLE f USING fts3(a,b,tokenize=icu);
    CREATE TABLE 'f_docsize'(docid INTEGER PRIMARY KEY, size BLOB);
    CREATE TABLE 'f_stat'(id INTEGER PRIMARY KEY, value BLOB);
    INSERT INTO f VALUES (1, '1234');
    INSERT INTO f_stat VALUES (1,x'0000000165656565db6569746565c5c52bc5c5c53e3a003bc502ffffffffc5c5c53e3a003bc502fffffffffb8b2afbfb6565f0740100650000000165656565db6569746565c5c52bc5c5c53e3a003bc502ffffffffc5c5c53e3a003b8b00c5c5c5c5c5bfc5');
    INSERT INTO f(f) VALUES ('merge=198,49');
  
