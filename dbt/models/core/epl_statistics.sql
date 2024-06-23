{{ config(materialized='table') }}

    select
        {{ get_date(Date) }} as match_date,
        cast(Time as TIME FORMAT 'HH24:MI') as match_time,
        hometeam,
        awayteam,
        fthg,
        ftag,
        {{ get_result_ftr_description("ftr") }} as FTR,
        hthg,
        htag,
        {{ get_result_htr_description("htr") }} as HTR,
        referee,
        hs,
        epl_external_table.AS,
        hst,
        ast,
        hf,
        af,
        hc,
        ac,
        hy,
        ay,
        hr,
        ar

    from {{ source('staging', 'epl_external_table') }}
    where FTHG is not Null

