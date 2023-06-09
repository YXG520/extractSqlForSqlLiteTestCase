

    SELECT rowid, offsets(email) FROM email
     WHERE email MATCH 'gas reminder'
  


    SELECT rowid, offsets(email) FROM email
     WHERE email MATCH 'subject:gas reminder'
  


    SELECT rowid, offsets(email) FROM email
     WHERE email MATCH 'body:gas reminder'
  


    SELECT rowid, offsets(email) FROM email
     WHERE subject MATCH 'gas reminder'
  


    SELECT rowid, offsets(email) FROM email
     WHERE body MATCH 'gas reminder'
  
