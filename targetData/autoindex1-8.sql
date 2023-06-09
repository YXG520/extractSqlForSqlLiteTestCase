

  CREATE TABLE accounts(
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    account_name TEXT,
    account_type TEXT,
    data_set TEXT
  );
  CREATE TABLE data(
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    package_id INTEGER REFERENCES package(_id),
    mimetype_id INTEGER REFERENCES mimetype(_id) NOT NULL,
    raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,
    is_read_only INTEGER NOT NULL DEFAULT 0,
    is_primary INTEGER NOT NULL DEFAULT 0,
    is_super_primary INTEGER NOT NULL DEFAULT 0,
    data_version INTEGER NOT NULL DEFAULT 0,
    data1 TEXT,
    data2 TEXT,
    data3 TEXT,
    data4 TEXT,
    data5 TEXT,
    data6 TEXT,
    data7 TEXT,
    data8 TEXT,
    data9 TEXT,
    data10 TEXT,
    data11 TEXT,
    data12 TEXT,
    data13 TEXT,
    data14 TEXT,
    data15 TEXT,
    data_sync1 TEXT,
    data_sync2 TEXT,
    data_sync3 TEXT,
    data_sync4 TEXT 
  );
  CREATE TABLE mimetypes(
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    mimetype TEXT NOT NULL
  );
  CREATE TABLE raw_contacts(
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    account_id INTEGER REFERENCES accounts(_id),
    sourceid TEXT,
    raw_contact_is_read_only INTEGER NOT NULL DEFAULT 0,
    version INTEGER NOT NULL DEFAULT 1,
    dirty INTEGER NOT NULL DEFAULT 0,
    deleted INTEGER NOT NULL DEFAULT 0,
    contact_id INTEGER REFERENCES contacts(_id),
    aggregation_mode INTEGER NOT NULL DEFAULT 0,
    aggregation_needed INTEGER NOT NULL DEFAULT 1,
    custom_ringtone TEXT,
    send_to_voicemail INTEGER NOT NULL DEFAULT 0,
    times_contacted INTEGER NOT NULL DEFAULT 0,
    last_time_contacted INTEGER,
    starred INTEGER NOT NULL DEFAULT 0,
    display_name TEXT,
    display_name_alt TEXT,
    display_name_source INTEGER NOT NULL DEFAULT 0,
    phonetic_name TEXT,
    phonetic_name_style TEXT,
    sort_key TEXT,
    sort_key_alt TEXT,
    name_verified INTEGER NOT NULL DEFAULT 0,
    sync1 TEXT,
    sync2 TEXT,
    sync3 TEXT,
    sync4 TEXT,
    sync_uid TEXT,
    sync_version INTEGER NOT NULL DEFAULT 1,
    has_calendar_event INTEGER NOT NULL DEFAULT 0,
    modified_time INTEGER,
    is_restricted INTEGER DEFAULT 0,
    yp_source TEXT,
    method_selected INTEGER DEFAULT 0,
    custom_vibration_type INTEGER DEFAULT 0,
    custom_ringtone_path TEXT,
    message_notification TEXT,
    message_notification_path TEXT
  );
  CREATE INDEX data_mimetype_data1_index ON data (mimetype_id,data1);
  CREATE INDEX data_raw_contact_id ON data (raw_contact_id);
  CREATE UNIQUE INDEX mime_type ON mimetypes (mimetype);
  CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (sort_key);
  CREATE INDEX raw_contact_sort_key2_index ON raw_contacts (sort_key_alt);
  CREATE INDEX raw_contacts_contact_id_index ON raw_contacts (contact_id);
  CREATE INDEX raw_contacts_source_id_account_id_index
      ON raw_contacts (sourceid, account_id);
  ANALYZE sqlite_master;
  INSERT INTO sqlite_stat1
     VALUES('raw_contacts','raw_contact_sort_key2_index','1600 4');
  INSERT INTO sqlite_stat1
     VALUES('raw_contacts','raw_contact_sort_key1_index','1600 4');
  INSERT INTO sqlite_stat1
     VALUES('raw_contacts','raw_contacts_source_id_account_id_index',
            '1600 1600 1600');
  INSERT INTO sqlite_stat1
     VALUES('raw_contacts','raw_contacts_contact_id_index','1600 1');
  INSERT INTO sqlite_stat1 VALUES('mimetypes','mime_type','12 1');
  INSERT INTO sqlite_stat1
     VALUES('data','data_mimetype_data1_index','9819 2455 3');
  INSERT INTO sqlite_stat1 VALUES('data','data_raw_contact_id','9819 7');
  INSERT INTO sqlite_stat1 VALUES('accounts',NULL,'1');
  DROP TABLE IF EXISTS sqlite_stat3;
  ANALYZE sqlite_master;
  
  EXPLAIN QUERY PLAN
  SELECT * FROM 
        data JOIN mimetypes ON (data.mimetype_id=mimetypes._id) 
             JOIN raw_contacts ON (data.raw_contact_id=raw_contacts._id) 
             JOIN accounts ON (raw_contacts.account_id=accounts._id)
   WHERE mimetype_id=10 AND data14 IS NOT NULL;



  EXPLAIN QUERY PLAN
  SELECT * FROM 
        data JOIN mimetypes ON (data.mimetype_id=mimetypes._id) 
             JOIN raw_contacts ON (data.raw_contact_id=raw_contacts._id) 
             JOIN accounts ON (raw_contacts.account_id=accounts._id)
   WHERE mimetypes._id=10 AND data14 IS NOT NULL;

