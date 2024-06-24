{{ config(materialized='table') }}

    select
        *
    from {{ ref("stg_epl_statistics") }}
    where FTHG is not Null

