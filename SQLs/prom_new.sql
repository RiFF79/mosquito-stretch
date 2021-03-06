CREATE VIEW PROM(
  "id",
  "external_id",
  "price",
  "name",
  "description",
  "presence",
  "discount",
  "discount_date_from",
  "discount_date_to",
  "currency",
  "unit")
AS
SELECT
  	id,
    id,
    (select * from get_inet_price(id)) as price,
    '' as fullname,
    '' as description,
    iif (available_suppl > 0, '+','-') as presence,
    iif (available_suppl > 0, (select SANAS_DISCOUNT from DEFAULTS) , null) as discount,
    iif (available_suppl > 0, current_date, null) as discount_date_from,
    iif (available_suppl > 0, dateadd (44 day to current_date), null) as discount_date_to,
    'UAH' as currency,
    'шт.' as unit
  FROM
  	GOODS
  WHERE
  	price2 > 0 and
  	DELETED = 0 and
    PRICE_CATEGORY_ID in (1,3) and --Парфюмерия или ниша
    not (TYPE_ID in (4,5,8)); --виалки, миниатюры, наборы