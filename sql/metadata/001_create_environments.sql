USE CATALOG ealp_dev;
USE SCHEMA metadata;

CREATE TABLE IF NOT EXISTS environments
(
    environment_id   STRING NOT NULL,
    environment_code STRING NOT NULL,
    environment_name STRING NOT NULL,
    description      STRING,

    is_active        BOOLEAN NOT NULL DEFAULT TRUE,

    created_by       STRING NOT NULL,
    created_at       TIMESTAMP NOT NULL,

    updated_by       STRING,
    updated_at       TIMESTAMP,

    version          INT NOT NULL DEFAULT 1
)
USING DELTA TBLPROPERTIES ('delta.feature.allowColumnDefaults' = 'supported');




