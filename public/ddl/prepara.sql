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

CREATE SCHEMA adm;
COMMENT ON SCHEMA adm IS 'tabelas de gestão do condomínio';

drop table if exists adm.condominio;
create table adm.condominio
(
    id serial not null
        constraint primarykey_adm_condominio
            primary key,
    firstdate timestamp default CURRENT_TIMESTAMP not null,
    lastdate timestamp not null,
    purgedate timestamp not null,
    firstuser varchar(15) not null,
    lasttuser varchar(15) not null,
    purgeuser varchar(15) not null,
    nome varchar(500) not null
);

comment on table adm.condominio is 'informações detalhadas do condomínio que serão utilizados em todos os módulos do sistema Verticals';

alter table adm.condominio owner to postgres;


drop table if exists adm.gestao;
create table adm.gestao
(
    id serial not null
        constraint primarykey_adm_gestao
            primary key,
    firstdate timestamp default CURRENT_TIMESTAMP not null,
    lastdate timestamp not null,
    purgedate timestamp not null,
    firstuser varchar(15) not null,
    lasttuser varchar(15) not null,
    purgeuser varchar(15) not null,
    condominio integer not null
        constraint gestao_condominio_foreignkey
            references adm.condominio
            on update cascade on delete cascade,
    designacao integer not null
        constraint gestao_designacoes_fk
            references adm.designacoes
            on update cascade on delete cascade,
    nome varchar(500) not null,
    inicio date default CURRENT_DATE not null,
    vigencia date default CURRENT_DATE not null
);

comment on table adm.gestao is 'Registra os tipos de cargos ou designações existentes no condominio';

alter table adm.gestao owner to postgres;

create table adm.designacoes
(
    id serial not null
        constraint primarykey_adm_designacoes
            primary key,
    firstdate timestamp default CURRENT_TIMESTAMP not null,
    lastdate timestamp not null,
    purgedate timestamp not null,
    firstuser varchar(15) not null,
    lasttuser varchar(15) not null,
    purgeuser varchar(15) not null,
    nome varchar(500) not null
);

alter table adm.designacoes owner to postgres;

