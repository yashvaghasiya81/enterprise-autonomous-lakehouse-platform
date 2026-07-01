USE CATALOG ealp_dev;
USE SCHEMA metadata;

CREATE TABLE IF NOT EXISTS sources
(
    source_id        STRING NOT NULL,
    source_code      STRING NOT NULL,
    source_name      STRING NOT NULL,
    source_type      STRING NOT NULL,
    source_system    STRING NOT NULL,

    owner            STRING,
    description      STRING,

    is_active        BOOLEAN NOT NULL DEFAULT TRUE,

    created_by       STRING NOT NULL,
    created_at       TIMESTAMP NOT NULL,

    updated_by       STRING,
    updated_at       TIMESTAMP,

    version          INT NOT NULL DEFAULT 1
)
USING DELTA TBLPROPERTIES ('delta.feature.allowColumnDefaults' = 'supported');
