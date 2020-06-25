select
	lim.recid,
	cus.mnemonic,
	cus.gb_name,
    lim.project_code,
    lim.limit_product,
    -- limit product name
    lim.limit_currency,
    lim.internal_amount as facility_amount,
    lim.maximum_total,
    lim.online_limit,
    lim.total_os as utilisation,
    lim.avail_amt as available_amount_limit,
    lim.commitm_amt as commitment_amount,
    lim.commt_amt_avail as available_amount_commitment,
    lim.l_fin_mt_dt as availability_end_date,
    lim.expiry_date,
    lim.l_pricing as pricing,
    lim.available_marker
from t24_limit lim
left join tbl_ms_customer cus on cast(lim.liability_number as integer) = cus.customer_number

