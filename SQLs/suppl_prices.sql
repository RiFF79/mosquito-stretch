delete from suppl_prices;

insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_1, '', 266, round(supl_price_1,2), available_1
from 
	goods
where
	art_1 is not null;


insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_2, '', 258, round(supl_price_2,2), available_2
from 
	goods
where
	art_2 is not null;

insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_3, art_3, 177, round(supl_price_3,2), available_3
from 
	goods
where
	art_3 is not null;
    
insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_4, '', 406, round(supl_price_4,2), available_4
from 
	goods
where
	art_4 is not null;
    
insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_5, '', 269, round(supl_price_5,2), available_5
from 
	goods
where
	art_5 is not null;    

insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_6, '', 2, round(supl_price_6,2), available_6
from 
	goods
where
	art_6 is not null;    
    
insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_7, '', 264, round(supl_price_7,2), available_7
from 
	goods
where
	art_7 is not null;    
    
insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_8, '', 270, round(supl_price_8,2), available_8
from 
	goods
where
	art_8 is not null;        
    
insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_9, '', 263, round(supl_price_9,2), available_9
from 
	goods
where
	art_9 is not null;
    
insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_10, '', 102, round(supl_price_10,2), available_10
from 
	goods
where
	art_10 is not null;    
    
insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_11, '', 394, round(supl_price_11,2), available_11
from 
	goods
where
	art_11 is not null;
    
insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_12, '', 137, round(supl_price_12,2), available_12
from 
	goods
where
	art_12 is not null;    
    
insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_13, '', 275, round(supl_price_13,2), available_13
from 
	goods
where
	art_13 is not null;        

insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_14, art_14, 64, round(supl_price_14,2), available_14
from 
	goods
where
	art_14 is not null;        
    
insert into suppl_prices
	(good_id, ext_art, ext_name, suppl_id, ext_price, ext_available)
select 
	id, art_16, art_16, 268, round(supl_price_16,2), available_16
from 
	goods
where
	art_16 is not null;