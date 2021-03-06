/* Create Tawian transacton Table for current, 2019 and 2018 transaction.

Union the following tables:
1- tw_transaction_2018
2- tw_transaction_2019
3- tw_transaction_current

*/

-----------------------------------------------------------------------------------------------

Create or replace view `mldata-8nkm.cdp_mltable.tw_transaction` as

WITH T1 AS(
SELECT *
FROM `mldata-8nkm.cdp_mltable.tw_transaction_2018`),

T2 AS (
SELECT *
FROM `mldata-8nkm.cdp_mltable.tw_transaction_2019`)

SELECT *
FROM `mldata-8nkm.cdp_mltable.tw_transaction_current`
UNION ALL
SELECT *
FROM T1
UNION ALL
SELECT *
FROM T2
