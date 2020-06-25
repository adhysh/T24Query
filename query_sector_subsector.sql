select
    right('0' || sector.id,2) || subsector.code as sector_key,
    sector.id as sector_code, sector.description as sector_name,
    subsector.code as sub_sector_code, subsector.description as sub_sector_name
from
    tbl_ms_sector sector
    left join tbl_ms_subsector subsector on sector.id = subsector.sector_id
