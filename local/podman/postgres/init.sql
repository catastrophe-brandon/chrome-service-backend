-- This script will execute as the 'postgres' user.
--
create user chrome superuser password 'chrome';
create user unleash_user superuser password 'password';

CREATE DATABASE unleash;
GRANT ALL PRIVILEGES ON DATABASE unleash to unleash_user;
GRANT ALL ON SCHEMA public to unleash_user;
GRANT ALL ON ALL TABLES IN SCHEMA public to unleash_user;

CREATE DATABASE chrome;
GRANT ALL PRIVILEGES ON DATABASE chrome to chrome;
GRANT ALL ON SCHEMA public to CHROME;
GRANT ALL ON ALL TABLES IN SCHEMA public to chrome;
