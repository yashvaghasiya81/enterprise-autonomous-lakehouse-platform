USE CATALOG ealp_dev;
USE SCHEMA metadata;

CREATE TABLE IF NOT EXISTS pipelines
(
    pipeline_id        STRING NOT NULL,
    dataset_id         STRING NOT NULL,

    pipeline_code      STRING NOT NULL,
    pipeline_name      STRING NOT NULL,

    pipeline_layer     STRING NOT NULL,

    pipeline_type      STRING NOT NULL,

    execution_engine   STRING NOT NULL,

    target_table       STRING,

    checkpoint_path    STRING,

    retry_count        INT DEFAULT 3,

    timeout_minutes    INT DEFAULT 60,

    is_active          BOOLEAN NOT NULL DEFAULT TRUE,

    created_by         STRING NOT NULL,
    created_at         TIMESTAMP NOT NULL,

    updated_by         STRING,
    updated_at         TIMESTAMP,

    version            INT NOT NULL DEFAULT 1
)
USING DELTA TBLPROPERTIES ('delta.feature.allowColumnDefaults' = 'supported');