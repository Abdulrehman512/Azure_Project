-- CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Abdul512125';
-- CREATE DATABASE SCOPED CREDENTIAL abdul_admin WITH IDENTITY = 'Managed Identity'

-- select * from sys.database_credentials

CREATE EXTERNAL FILE FORMAT extfileformat WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);

CREATE EXTERNAL DATA SOURCE goldlayer WITH (
    LOCATION = 'https://olistecommdatastorage1.dfs.core.windows.net/olistdata/gold/',
    CREDENTIAL = abdul_admin
);

CREATE EXTERNAL TABLE gold.finaltable WITH (
        LOCATION = 'Serving',
        DATA_SOURCE = goldlayer,
        FILE_FORMAT = extfileformat
) AS
SELECT * FROM gold.final2;