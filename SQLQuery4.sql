UPDATE contract
SET tariff_id = (SELECT tariff_id FROM tariff WHERE name = '��� 40')
FROM contract c
JOIN manager m ON c.manager_id = m.manager_id
WHERE m.full_name = '��������� ����� ����������';

SELECT c.name, t.name FROM contract c
JOIN tariff t ON c.tariff_id = t.tariff_id
JOIN manager m ON c.manager_id = m.manager_id
WHERE full_name = '��������� ����� ����������';