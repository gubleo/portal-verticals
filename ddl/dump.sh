#!/usr/bin/env bash

rm /Applications/lampp/apache2/htdocs/verticals/dump.sql
/Applications/pgAdmin\ 4.app/Contents/SharedSupport/pg_dump --file "/Applications/lampp/apache2/htdocs/portal-verticals/public/ddl/dump.sql" --host "localhost" --port "5432" --username "postgres" --no-password --verbose --role "postgres" --format=p --schema-only --encoding "UTF8" "svl"