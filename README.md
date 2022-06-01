# База данных для магазина музыкальных инструментов.
Данная база данных содержит информацию о магазине музыкальных инструментов
# Типовые запросы к БД
-- 1. Найм сотрудника --
INSERT INTO `music_shop`.`personal` (`full_name`, `positions_id`, `salary`)
VALUES ('Иван Иванов Иванович', '2', '20000');

-- 2. Увольнение сотрудника --
DELETE FROM `personal` WHERE `full_name` = 'Иван Иванов Сергеевич';

-- 3. Добавить нового клиента --
INSERT INTO `music_shop`.`clients` (`full_name`, `phone_number`, `email`)
VALUES ('Иван Другой Виванович', '+79999999998', 'ivan@gmail.com');

-- 4. Добавить новый предмет на складе --
INSERT INTO `music_shop`.`items` (`name`, `cost`, `types_id`, `number_of_items`)
VALUES ('Электрогитара', '15000', '3', '5');

-- 5. Сделана покупка --
INSERT INTO `music_shop`.`purchases` (`items_id`, `clients_id`, `personal_id`)
VALUES ('1', '1', '2');

UPDATE `music_shop`.`items`
SET `number_of_items` = (SELECT `number_of_items` FROM `items` WHERE `id` = '1') - 1
WHERE (`id` = '1');
