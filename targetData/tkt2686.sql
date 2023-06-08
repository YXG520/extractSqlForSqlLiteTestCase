DELETE FROM filler 
       WHERE rowid <= (SELECT MAX(rowid) FROM filler LIMIT 20)
    
DELETE FROM filler 
       WHERE rowid <= (SELECT MAX(rowid) FROM filler LIMIT 20)
    
