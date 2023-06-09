

  } {1 {database disk image is malformed}}
}

corruption_test -sqlprep $sqlprep -corrupt {
  # Mess up the page-header of one of the leaf pages of the index B-Tree.
  # The corruption is detected as part of an OP_Prev opcode.
  #
  set fd [open corrupt.db r+]
  fconfigure $fd -translation binary -encoding binary
  seek $fd [expr 1024*2 + 12] 
  set zCellOffset [read $fd 2]
  binary scan $zCellOffset S iCellOffset
  seek $fd [expr 1024*2 + $iCellOffset]
  set zChild [read $fd 4]
  binary scan $zChild I iChild
  seek $fd [expr 1024*($iChild-1)+3]
  puts -nonewline $fd 


  } {1 {database disk image is malformed}}
}

corruption_test -sqlprep $sqlprep -corrupt {
  # Set the page-flags of one of the leaf pages of the table B-Tree to
  # 0x0A (interpreted by SQLite as 
