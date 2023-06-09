

  CREATE TABLE t11(
    x INTEGER PRIMARY KEY, 
    parent REFERENCES t11 ON DELETE CASCADE
  );
  INSERT INTO t11 VALUES (1, NULL), (2, 1), (3, 2);



  INSERT OR REPLACE INTO t11 VALUES (2, 3);

txt

    global traceoutput
    lappend traceoutput $txt
  

INSERT OR REPLACE INTO t11 VALUES(2,3);


  CREATE TABLE Foo (
    Id INTEGER PRIMARY KEY, 
    ParentId INTEGER REFERENCES Foo(Id) ON DELETE CASCADE, C1
  );
  INSERT OR REPLACE INTO Foo(Id, ParentId, C1) VALUES (1, null, 'A');
  INSERT OR REPLACE INTO Foo(Id, ParentId, C1) VALUES (2, 1, 'A-2-1');
  INSERT OR REPLACE INTO Foo(Id, ParentId, C1) VALUES (3, 2, 'A-3-2');
  INSERT OR REPLACE INTO Foo(Id, ParentId, C1) VALUES (4, 3, 'A-4-3');



  INSERT OR REPLACE INTO Foo(Id, ParentId, C1) VALUES (2, 3, 'A-2-3');

