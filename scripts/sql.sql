--EXPLAIN PLAN FOR
  SELECT product_name 
  FROM   order_items o, product_information p  
  WHERE  o.unit_price = 15
  AND    quantity > 1  
  AND    p.product_id = o.product_id
;
--select plan_table_output from table(dbms_xplan.display('plan_table',null,'serial'));
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(FORMAT=>'+ADAPTIVE'));
exit;
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(FORMAT=>'+ALLSTATS'));
SELECT CHILD_NUMBER, CPU_TIME, ELAPSED_TIME, BUFFER_GETS
FROM   V$SQL
WHERE  SQL_ID = '6mphyc07wc96s';