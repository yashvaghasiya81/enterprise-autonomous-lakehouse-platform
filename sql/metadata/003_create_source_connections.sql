USE CATALOG ealp_dev;
USE SCHEMA metadata;

CREATE TABLE IF NOT EXISTS source_connections
(
    connection_id       STRING NOT NULL,
    source_id           STRING NOT NULL,
    environment_id      STRING NOT NULL,

    connection_name     STRING NOT NULL,

    server_name         STRING,
    database_name       STRING,
    port                INT,

    authentication_type STRING NOT NULL,

    secret_name         STRING,

    jdbc_url            STRING,

    is_active           BOOLEAN NOT NULL DEFAULT TRUE,

    created_by          STRING NOT NULL,
    created_at          TIMESTAMP NOT NULL,

    updated_by          STRING,
    updated_at          TIMESTAMP,

    version             INT NOT NULL DEFAULT 1
)
USING DELTA TBLPROPERTIES ('delta.feature.allowColumnDefaults' = 'supported');
