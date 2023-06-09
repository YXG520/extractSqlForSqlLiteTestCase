

#  set ::N [expr int(([expr pow(2,32)]/50) + 1)]
#  expr (($::N*50) & 0xffffffff)<55
#

#  set ::format "[string repeat A 60][string repeat "%J" $::N]"
#  catchsql {
#    SELECT strftime($::format, 1);
#  
