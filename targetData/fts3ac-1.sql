


    SELECT rowid FROM email WHERE email MATCH 'mark'
  


    SELECT rowid FROM email WHERE email MATCH 'susan'
  


    SELECT rowid FROM email WHERE email MATCH 'mark susan'
  


    SELECT rowid FROM email WHERE email MATCH 'susan mark'
  


    SELECT rowid FROM email WHERE email MATCH '"mark susan"'
  


    SELECT rowid FROM email WHERE email MATCH 'mark -susan'
  


    SELECT rowid FROM email WHERE email MATCH '-mark susan'
  


    SELECT rowid FROM email WHERE email MATCH 'mark OR susan'
  
