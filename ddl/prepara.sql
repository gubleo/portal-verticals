DO
    $_$
        DECLARE
            item RECORD;
        BEGIN

            FOR item IN SELECT schema_name AS schema
                        FROM information_schema.schemata
                        WHERE schema_name NOT IN
                              ('information_schema', 'pg_catalog', 'pg_temp_1', 'pg_toast', 'pg_toast_temp_1', 'public')
                        ORDER BY schema_name
                LOOP

                    EXECUTE $x$DROP SCHEMA $x$ || item.schema || $x$ CASCADE$x$;

                END LOOP;

        END
        $_$;