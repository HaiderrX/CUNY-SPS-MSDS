SELECT * FROM products_info;

-- Average Year To Date
SELECT date,
      product_id,
      product_name,
      units_sold,
      revenue,
      ROUND (
        AVG(units_sold) OVER (
          PARTITION BY product_id
          ORDER BY date
        )::numeric, 2 -- postgresql way of casting
      ) AS avg_units_sold
FROM products_info;

-- Six Day Moving Average for Each Item
SELECT
	product_id,
	product_name,
	date,
	ROUND(
		AVG(units_sold) OVER (
	        PARTITION BY product_id 
	        ORDER BY date 
	        ROWS BETWEEN 5 PRECEDING AND CURRENT ROW
		)::numeric, 2
	) AS six_day_moving_avg
FROM products_info;