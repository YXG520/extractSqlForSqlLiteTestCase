

    SELECT snippet(email) FROM email
     WHERE email MATCH 'subject:gas reminder'
  


    SELECT snippet(email) FROM email
     WHERE email MATCH 'christmas candlelight'
  


    SELECT snippet(email) FROM email
     WHERE email MATCH 'deal sheet potential reuse'
  


    SELECT snippet(email,'<<<','>>>',' ') FROM email
     WHERE email MATCH 'deal sheet potential reuse'
  


    SELECT snippet(email,'<<<','>>>',' ') FROM email
     WHERE email MATCH 'first things'
  


    SELECT snippet(email) FROM email
     WHERE email MATCH 'chris is here'
  


    SELECT snippet(email) FROM email
     WHERE email MATCH '"pursuant to"'
  


    SELECT snippet(email) FROM email
     WHERE email MATCH 'ancillary load davis'
  
