select c.name, money
from contract c
join tariff t on c.tariff_id = t.tariff_id
where t.money = (select MAX(money) from tariff)
ORDER BY c.name;

