

  CREATE TABLE [Beginnings] (
    [Id] INTEGER PRIMARY KEY AUTOINCREMENT,[Title] TEXT, [EndingId] INTEGER
  );
  CREATE TABLE [Endings] (Id INT,Title TEXT,EndingId INT);
  INSERT INTO Beginnings (Id, Title, EndingId) VALUES (1, 'FACTOR', 18);
  INSERT INTO Beginnings (Id, Title, EndingId) VALUES (2, 'SWIMM', 18);
  INSERT INTO Endings (Id, Title, EndingId) VALUES (1, 'ING', 18);



  SELECT
    SrcWord, Beginnings.Title
    FROM 
      (SELECT 'FACTORING' AS SrcWord UNION SELECT 'SWIMMING' AS SrcWord )
    LEFT JOIN 
      Beginnings
    WHERE Beginnings.Id= (
      SELECT BeginningId FROM (
        SELECT SrcWord, B.Id as BeginningId, B.Title || E.Title As Connected
        FROM Beginnings B LEFT JOIN Endings E ON B.EndingId=E.EndingId
        WHERE Connected=SrcWord LIMIT 1
      )
    )

