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

<style type="text/css" scoped="scoped">.slgh,.slgh code,.slgh ul, .slgh ol{margin:0;padding:0;border:0;outline:0;background:none;text-align:left;float:none;vertical-align:baseline;position:static;left:auto;top:auto;right:auto;bottom:auto;height:auto;width:auto;line-height:1.1em;font-family:'Courier New', Courier, monospace;font-weight:normal;font-style:normal;font-size:1em;min-height:inherit;min-height:auto;}.slgh{background:#fff;width:99%;margin:1em 0;padding:1px;position:relative;overflow:auto;overflow-y:hidden;}.slgh ul{list-style:none;margin-left:.5em}.slgh ol{margin-left:3.5em}.slgh .bold {font-weight:bold;}.slgh .italic {font-style:italic;}.slgh .no-wrap li{white-space:pre;}.slgh li{padding-left:.5em;}.slgh li{border-left:3px solid #ccc;color:#666;}.slgh li.alt1{background:#fff;padding-left: 1em;}.slgh li.alt2{background:#F8F8F8;padding-left: 1em;}.slgh .plain, .slgh .plain a{color:#000;}.slgh .comments, .slgh .comments a{color:#008200;}.slgh .string, .slgh .string a{color:blue;}.slgh .keyword{color:#069;font-weight:bold;}.slgh .preprocessor {color:gray;}.slgh .variable{color:#a70;}.slgh .value{color:#090;}.slgh .functions{color:#ff1493;}.slgh .constants{color:#0066CC;}.slgh .script{background:yellow;}.slgh .color1,.slgh .color1 a{color:#808080;}.slgh .color2,.slgh .color2 a{color:#ff1493;}.slgh .color3,.slgh .color3 a{color:red;}.slghcr{margin:-.5em 1.2em}.slghcr a{color:#aaa;background:#fff;text-decoration:none;border-bottom:1px dotted #aaa;font-size:.6em;font-family:arial}</style><div id="hler_967180" class="slgh"><ol class="lines no-wrap"><li class="alt1"><code class="keyword">-</code><code class="keyword">-</code> <code class="value">2.</code> <code class="plain">Увольнение сотрудника </code><code class="keyword">-</code><code class="keyword">-</code></li><li class="alt2"><code class="plain">DELETE FROM `personal` WHERE `full_name` </code><code class="keyword">=</code> <code class="string">'Иван Иванов Сергеевич'</code><code class="plain">;</code></li></ol></div><div class="slghcr">Подсветка програмного кода</div>
