USE CATALOG ealp_dev;
USE SCHEMA metadata;

CREATE TABLE IF NOT EXISTS dataset_columns
(
    column_id            STRING NOT NULL,
    dataset_id           STRING NOT NULL,

    column_name          STRING NOT NULL,
    data_type            STRING NOT NULL,

    ordinal_position     INT NOT NULL,

    nullable             BOOLEAN NOT NULL DEFAULT TRUE,

    is_primary_key       BOOLEAN NOT NULL DEFAULT FALSE,

    is_partition_column  BOOLEAN NOT NULL DEFAULT FALSE,

    is_active            BOOLEAN NOT NULL DEFAULT TRUE,

    created_by           STRING NOT NULL,
    created_at           TIMESTAMP NOT NULL,

    updated_by           STRING,
    updated_at           TIMESTAMP,

    version              INT NOT NULL DEFAULT 1
)
USING DELTA TBLPROPERTIES ('delta.feature.allowColumnDefaults' = 'supported');