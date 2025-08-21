WITH metal_list AS (SELECT symbol AS metal FROM Elements WHERE type='Metal')
, nonmetal_list AS (SELECT symbol AS nonmetal FROM Elements WHERE type='Nonmetal')

SELECT metal,nonmetal
FROM metal_list m
CROSS JOIN nonmetal_list nm