select
	fullname,
    SUPL_PRICE_19 as arabi,
    SUPL_PRICE_1 * AVAILABLE_1 as ded,
    SUPL_PRICE_3 * AVAILABLE_3 as vova,
    SUPL_PRICE_4 * AVAILABLE_4 as flacon,
    SUPL_PRICE_6 * AVAILABLE_6 as dnepr,
    SUPL_PRICE_9 * AVAILABLE_9 as parfex,
    WEIGHT
from
	GOODS
where
	SUPL_PRICE_19 > 0
order by
	fullname