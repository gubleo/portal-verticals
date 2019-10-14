DO
    $_$
        DECLARE
            item RECORD;
        BEGIN

            FOR item IN SELECT schema_name AS schema
                        FROM information_schema.schemata
                        WHERE schema_name NOT IN
                              ('information_schema', 'pg_catalog', 'pg_temp_1', 'pg_toast', 'pg_toast_temp_1')
                        ORDER BY schema_name
                LOOP

                    EXECUTE $x$DROP SCHEMA $x$ || item.schema || $x$ CASCADE$x$;

                END LOOP;

        END
        $_$;



create table adm.portarias
(
    id serial not null
        constraint primarykey_adm_portarias
            primary key,
    firstdate timestamp default CURRENT_TIMESTAMP not null,
    lastdate timestamp not null,
    purgedate timestamp not null,
    firstuser varchar(15) not null,
    lasttuser varchar(15) not null,
    purgeuser varchar(15) not null,
    condominio integer not null
        constraint portarias_condominio_foreignkey
            references adm.condominio
            on update cascade on delete cascade,
    nome varchar(500) not null
);

comment on table adm.portarias is 'Informações de gestão das portarias';

alter table adm.portarias owner to postgres;


