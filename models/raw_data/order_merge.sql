{{ config(materialized="incremental", unique_key="id", incremental_strategy="merge") }}
select *
from {{ source("datafeed_shared_schema", "RAW_ORDERS") }}
