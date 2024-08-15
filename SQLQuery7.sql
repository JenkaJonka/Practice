SELECT t.name AS TariffName, c.name AS ClientName
FROM contract c
JOIN manager m ON c.manager_id = m.manager_id
JOIN tariff t ON c.tariff_id = t.tariff_id
WHERE CHARINDEX(' ', t.name) > 0 AND c.name LIKE '% %À% %' AND contract_type = 'B2C'
ORDER BY t.name;