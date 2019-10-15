#!/usr/bin/env bash

echo $PWD

rm /Applications/lampp/apache2/htdocs/verticals/dump.sql
/Applications/pgAdmin\ 4.app/Contents/SharedSupport/pg_dump --file $PWD"/dump.sql" --host "localhost" --port "5432" --username "postgres" --no-password --verbose --role "postgres" --format=p --schema-only --encoding "UTF8" "svl"