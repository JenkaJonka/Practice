CREATE FUNCTION fun_test1 (@from_date date)
RETURNS TABLE
AS
RETURN
(
	SELECT c.contract_id, c.created_dt , t.name AS tariff_name, t.money AS tariff_cost, m.full_name AS manager_full_name, m.city, m.departament
	FROM contract c
	INNER JOIN tariff t ON c.tariff_id = t.tariff_id
	INNER JOIN manager m ON c.manager_id = m.manager_id
	WHERE c.created_dt >= @from_date
)



