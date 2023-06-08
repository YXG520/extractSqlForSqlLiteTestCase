CREATE VIRTUAL TABLE t1 USING tcl(vtab_command);

set script [subst {
    execsql "$sql"
    set ::vtab_constraints
  
