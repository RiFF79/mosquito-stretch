select 
	ext_art,
    (select fullname from goods where goods.id = suppl_prices.good_id) as fullname,
    (select cnt_all from goods where goods.id = suppl_prices.good_id) as cnt_all,
    (select c1 from goods where goods.id = suppl_prices.good_id) as cnt_1,    
    ext_price,
    (COALESCE((select supl_price_1 from goods where goods.id = suppl_prices.good_id),0) * COALESCE((select available_1 from goods where goods.id = suppl_prices.good_id),0)) as ded, 
    (COALESCE((select supl_price_3 from goods where goods.id = suppl_prices.good_id),0) * COALESCE((select available_3 from goods where goods.id = suppl_prices.good_id),0)) as vova, 
    (COALESCE((select supl_price_4 from goods where goods.id = suppl_prices.good_id),0) * COALESCE((select available_4 from goods where goods.id = suppl_prices.good_id),0)) as flacon, 
    (COALESCE((select supl_price_6 from goods where goods.id = suppl_prices.good_id),0) * COALESCE((select available_6 from goods where goods.id = suppl_prices.good_id),0)) as dnepr, 
    (COALESCE((select supl_price_9 from goods where goods.id = suppl_prices.good_id),0) * COALESCE((select available_9 from goods where goods.id = suppl_prices.good_id),0)) as parfex
FROM
	suppl_prices, min_ext_prices
where
	(suppl_prices.good_id = min_ext_prices."good_id") and 
    (ext_price = min_ext_prices."min_price") and 
    ((select price_category_id from goods where goods.id = SUPPL_PRICES.good_id) <> 3) and 
    ((select use_ext_price from customers where customers.id = suppl_id) = 1) and
    (suppl_id = 268)
order by
	fullname