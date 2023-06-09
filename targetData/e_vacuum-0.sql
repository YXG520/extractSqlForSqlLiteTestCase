
 VACUUM 

}

# EVIDENCE-OF: R-51469-36013 Unless SQLite is running in
# "auto_vacuum=FULL" mode, when a large amount of data is deleted from
# the database file it leaves behind empty space, or "free" database
# pages.
#
# EVIDENCE-OF: R-60541-63059 Running VACUUM to rebuild the database
# reclaims this space and reduces the size of the database file.
#
foreach {tn avmode sz
