SELECT c.contract_id AS ClientID, c.name AS ClientName, m.full_name AS ManagerName, c.created_dt AS CreatedDate
FROM contract c
INNER JOIN manager m ON c.manager_id = m.manager_id
WHERE m.city IS NULL;
