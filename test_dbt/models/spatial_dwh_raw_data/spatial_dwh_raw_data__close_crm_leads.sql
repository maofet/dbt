{{ config(materialized='table') }}

with close_crm_leads_data as (
    select * from {{ source('close_crm_data','leads') }}
),
final as (
    select * from close_crm_leads_data
)
select *
  from final