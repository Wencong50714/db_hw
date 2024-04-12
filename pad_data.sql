-- owner 表
INSERT INTO owner (id, name, phone, gender, address) VALUES
(1, '格雷🦊斯', '13812345678', '男', '北京市朝阳区'),
(2, '亚托克斯', '13987654321', '男', '上海市浦东新区'),
(3, 'EZ瑞尔', '13611112222', '男', '广州市天河区');


-- pet 表
INSERT INTO pet (id, age, breed, note, registration_data, owner_id) VALUES
(1, 3, '泰迪', '黑色，有点调皮', '2023-01-15 10:00:00', 1),
(2, 2, '金毛', '黄色，很乖', '2023-02-20 11:30:00', 2),
(3, 1, '柯基', '三色，活泼', '2023-03-10 09:45:00', 3),
(4, 4, '波斯猫', '灰色，喜欢睡觉', '2023-04-05 15:20:00', 1);

-- order 表
INSERT INTO "order" (id, time, amount, status, product_id, owner_id) VALUES
(1, '2023-01-20 14:00:00', 50.00, '已完成', 1, 1),
(2, '2023-02-25 09:30:00', 30.00, '已取消', 2, 2),
(3, '2023-03-12 16:45:00', 100.00, '待处理', 3, 3),
(4, '2023-04-10 11:10:00', 80.00, '已完成', 4, 1);

-- product_info 表
INSERT INTO product_info (name, price) VALUES
('狗粮', 50.00),
('猫粮', 30.00),
('宠物玩具', 100.00),
('猫砂', 80.00);

-- product 表
INSERT INTO product (id, stock_quantity, name) VALUES
(1, 100, '狗粮'),
(2, 80, '猫粮'),
(3, 50, '宠物玩具'),
(4, 70, '猫砂');

-- contains 表
INSERT INTO contains (order_id, product_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- employee 表
INSERT INTO employee (id, name, position, working_hours) VALUES
(1, '吉格斯', '宠物护理师', 40),
(2, '提莫', '宠物美容师', 35),
(3, '克烈', '宠物培训师', 30);

-- service_type 表
INSERT INTO service_type (type, price) VALUES
('洗澡', 50.00),
('修剪', 40.00),
('训练', 60.00);

-- service 表
INSERT INTO service (id, employee_id, type) VALUES
(1, 1, '洗澡'),
(2, 2, '修剪'),
(3, 3, '训练');

-- appointment 表
INSERT INTO appointment (id, appoint_time, order_time, owner_id) VALUES
(1, '2023-01-25 10:00:00', '2023-01-20 09:00:00', 1),
(2, '2023-02-28 11:00:00', '2023-02-25 10:30:00', 2),
(3, '2023-03-15 14:00:00', '2023-03-12 13:00:00', 3),
(4, '2023-04-12 15:00:00', '2023-04-10 14:30:00', 1);

-- include 表
INSERT INTO include (service_id, appoint_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(1, 4);
