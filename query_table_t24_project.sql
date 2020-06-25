select
    m.project_code as project_key,
    tmc.gb_name || ' (' || m.bussiness || ')' as project_name,
    m.project_location,
    ms_prjtype.flag_desc as project_type,
    ms_sne.flag_desc as project_se_category
from tbl_ms_project m
    inner join tbl_ms_customer tmc on m.customer_id = tmc.id
    left join tbl_flag_master ms_prjtype on m.project_type_flag_master_id = ms_prjtype.id
    left join tbl_flag_master ms_sne on m.sne_category_flag_master_id = ms_sne.id
where
    m.project_status = 8;