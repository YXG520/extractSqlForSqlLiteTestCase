

    CREATE TABLE Folders(
      folderid INTEGER PRIMARY KEY, 
      parentid INTEGER, 
      rootid INTEGER, 
      path VARCHAR(255)
    );
  


    DELETE FROM Folders WHERE folderid IN
    (SELECT folderid FROM Folder WHERE path LIKE 'C:\MP3\Albums\' || '%');
  
