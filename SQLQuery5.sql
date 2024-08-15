--���������� ����������� ��� ������� ��� ������� ������:
WITH MinPricesForEachCity AS (
    SELECT m.city, MIN(t.money) AS MinPrice
    FROM contract c
    JOIN manager m ON c.manager_id = m.manager_id
    JOIN tariff t ON c.tariff_id = t.tariff_id
    WHERE m.city IN ('������������', '������ �����', '�������-���������')
    GROUP BY m.city
),

--���������� ������������ �� ����������� ���:
MaxOfMinPrices AS (
    SELECT MAX(MinPrice) AS MaxMinPrice
    FROM MinPricesForEachCity
)

--����� ���������� � �������: 
SELECT t.name, t.money, COUNT(c.contract_id) AS ClientsCount
FROM tariff t
LEFT JOIN contract c ON t.tariff_id = c.tariff_id
WHERE t.money < (SELECT MaxMinPrice FROM MaxOfMinPrices)
GROUP BY t.name, t.money
ORDER BY t.money;