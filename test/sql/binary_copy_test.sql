BEGIN;
CREATE EXTENSION country;
CREATE TABLE before (a country);
INSERT INTO before values ('de'),('us'),('es'),('de'),('zz');
CREATE TABLE after (a country);
COPY before TO '/tmp/tst' WITH (FORMAT binary);
COPY after FROM '/tmp/tst' WITH (FORMAT binary);
SELECT * FROM after;
ROLLBACK;
