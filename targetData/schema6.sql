catch {db close
forcedelete test.db
    sqlite3 db test.db
    db eval $sql
    set pgsz [db one {PRAGMA page_size
