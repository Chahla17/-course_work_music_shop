-- Добавить 3 должности --
INSERT INTO `music_shop`.`positions` (`position`) VALUES ('менеджер');
INSERT INTO `music_shop`.`positions` (`position`) VALUES ('продавец');
INSERT INTO `music_shop`.`positions` (`position`) VALUES ('директор');

-- Добавить директора -- 
INSERT INTO `music_shop`.`personal` (`full_name`, `positions_id`, `salary`) VALUES ('Влад Нигматулин', '3', '100000');
INSERT INTO `music_shop`.`personal` (`full_name`, `positions_id`, `salary`) VALUES ('Иван Иванов Сергеевич', '2', '20000');

-- Добавить клиента --
INSERT INTO `music_shop`.`clients` (`full_name`, `phone_number`, `email`) VALUES ('Дмитрий Ктототамто', '+79999999999', 'dima@gmail.com');

-- Добавить типы музкальных предметов --
INSERT INTO `music_shop`.`types` (`type`) VALUES ('Духовые');
INSERT INTO `music_shop`.`types` (`type`) VALUES ('Ударные');
INSERT INTO `music_shop`.`types` (`type`) VALUES ('Струнные');
INSERT INTO `music_shop`.`types` (`type`) VALUES ('Электронные');

-- Добавить 4 музыкальных иструмента --
INSERT INTO `music_shop`.`items` (`name`, `cost`, `types_id`, `number_of_items`) VALUES ('Барабаны', '10000', '2', '5');
INSERT INTO `music_shop`.`items` (`name`, `cost`, `types_id`, `number_of_items`) VALUES ('Гитара', '15000', '3', '7');
INSERT INTO `music_shop`.`items` (`name`, `cost`, `types_id`, `number_of_items`) VALUES ('Флейта', '7000', '1', '4');
INSERT INTO `music_shop`.`items` (`name`, `cost`, `types_id`, `number_of_items`) VALUES ('Электропианино', '20000', '4', '2');
