USE CATALOG ealp_dev;
USE SCHEMA metadata;

CREATE TABLE IF NOT EXISTS datasets
(
    dataset_id           STRING NOT NULL,
    source_id            STRING NOT NULL,

    dataset_code         STRING NOT NULL,
    dataset_name         STRING NOT NULL,

    source_object        STRING NOT NULL,
    source_object_type   STRING NOT NULL,

    ingestion_mode       STRING NOT NULL,
    load_type            STRING NOT NULL,

    bronze_table         STRING,
    silver_table         STRING,
    gold_table           STRING,

    is_active            BOOLEAN NOT NULL DEFAULT TRUE,

    created_by           STRING NOT NULL,
    created_at           TIMESTAMP NOT NULL,

    updated_by           STRING,
    updated_at           TIMESTAMP,

    version              INT NOT NULL DEFAULT 1
)
USING DELTA TBLPROPERTIES ('delta.feature.allowColumnDefaults' = 'supported');