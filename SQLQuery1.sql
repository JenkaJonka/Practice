SELECT name, created_dt, full_name FROM dbo.contract
INNER JOIN dbo.manager ON dbo.contract.manager_id = dbo.manager.manager_id
WHERE created_dt > '2024-01-01' AND created_dt < '2024-12-31'
ORDER BY created_dt DESC;

