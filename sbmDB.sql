/*
 Navicat Premium Dump SQL

 Source Server         : TBD
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : sbm

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 12/12/2024 18:14:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `exterior_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `interior_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `neighborhood` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `postal_code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `city_id` int NOT NULL,
  PRIMARY KEY (`address_id`) USING BTREE,
  INDEX `address_ibfk_1`(`city_id` ASC) USING BTREE,
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Stores the addresses associated with projects, clients, employees, and subcontractors, including city and postal code.' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 'Calle Independencia', '123', '1A', 'Centro', '31000', 1);
INSERT INTO `address` VALUES (2, 'Av. Universidad', '456', '2B', 'San Felipe', '31203', 1);
INSERT INTO `address` VALUES (3, 'Calle Juárez', '789', '3C', 'Barrio del Centro', '31000', 2);
INSERT INTO `address` VALUES (4, 'Av. Tecnológico', '101', '4D', 'Deportistas', '31216', 1);
INSERT INTO `address` VALUES (5, 'Calle Aldama', '202', '5E', 'Obrera', '31050', 3);
INSERT INTO `address` VALUES (6, 'Av. Mirador', '303', '6F', 'Mirador', '31215', 1);
INSERT INTO `address` VALUES (7, 'Calle Victoria', '404', '7G', 'Pacífico', '31125', 4);
INSERT INTO `address` VALUES (8, 'Av. Juárez', '505', '8H', 'Centro', '31000', 1);
INSERT INTO `address` VALUES (9, 'Calle Hidalgo', '606', '9I', 'Santa Rosa', '31030', 2);
INSERT INTO `address` VALUES (10, 'Av. Deza y Ulloa', '707', '10J', 'Villas del Rey', '31115', 1);
INSERT INTO `address` VALUES (11, 'Calle Rosales', '808', NULL, 'Nombre de Dios', '31120', 1);
INSERT INTO `address` VALUES (12, 'Calle Bolívar', '909', NULL, 'Santo Niño', '31040', 4);
INSERT INTO `address` VALUES (13, 'Calle Ocampo', '1010', NULL, 'Santa Rita', '31050', 3);
INSERT INTO `address` VALUES (14, 'Av. Independencia', '1111', NULL, 'Centro', '31000', 1);
INSERT INTO `address` VALUES (15, 'Calle Morelos', '1212', NULL, 'Barrio del Centro', '31000', 1);
INSERT INTO `address` VALUES (16, 'Calle Bolívar', '438', '', 'Residencial', '31050', 3);
INSERT INTO `address` VALUES (17, 'Calle Gómez Morín', '805', '', 'Nombre de Dios', '31220', 2);
INSERT INTO `address` VALUES (18, 'Calle Gómez Morín', '123', NULL, 'Granjas', '31130', 2);
INSERT INTO `address` VALUES (19, 'Calle Rosales', '683', NULL, 'Villas del Rey', '31010', 3);
INSERT INTO `address` VALUES (20, 'Calle Libertad', '168', NULL, 'Lomas del Santuario', '31230', 1);
INSERT INTO `address` VALUES (21, 'Calle Hidalgo', '212', NULL, 'Santa Rosa', '31150', 1);
INSERT INTO `address` VALUES (22, 'Av. Tecnológico', '314', NULL, 'Deportistas', '31200', 3);
INSERT INTO `address` VALUES (23, 'Calle Ocampo', '485', NULL, 'Santa Rita', '31160', 1);
INSERT INTO `address` VALUES (24, 'Calle Juárez', '758', NULL, 'San Felipe', '31125', 2);
INSERT INTO `address` VALUES (25, 'Av. Independencia', '998', NULL, 'Centro', '31020', 1);
INSERT INTO `address` VALUES (26, 'Calle Victoria', '505', NULL, 'Obrera', '31040', 4);
INSERT INTO `address` VALUES (27, 'Calle Bolívar', '409', NULL, 'Granjas', '31190', 2);
INSERT INTO `address` VALUES (28, 'Calle Morelos', '707', NULL, 'Barrio del Centro', '31130', 2);
INSERT INTO `address` VALUES (29, 'Calle Zaragoza', '123', '', 'Campestre', '31000', 8);
INSERT INTO `address` VALUES (30, 'Calle Reforma', '512', NULL, 'La Cima', '31250', 1);
INSERT INTO `address` VALUES (31, 'Av. Pacheco', '800', NULL, 'Universitaria', '31170', 1);
INSERT INTO `address` VALUES (32, 'Calle Rosales', '620', NULL, 'Santo Niño', '31110', 3);
INSERT INTO `address` VALUES (33, 'Av. Universidad', '509', NULL, 'Residencial', '31235', 1);
INSERT INTO `address` VALUES (34, 'Calle Zaragoza', '712', NULL, 'Barrio del Centro', '31030', 1);
INSERT INTO `address` VALUES (35, 'Calle Hidalgo', '123', NULL, 'Villas del Rey', '31210', 2);
INSERT INTO `address` VALUES (36, 'Calle Reforma', '999', NULL, 'San Felipe', '31180', 1);
INSERT INTO `address` VALUES (37, 'Calle Álvarez', '404', NULL, 'Santa Rosa', '31050', 2);
INSERT INTO `address` VALUES (38, 'Calle Gómez Morín', '305', NULL, 'Nombre de Dios', '31160', 1);
INSERT INTO `address` VALUES (39, 'Av. Tecnológico', '123', NULL, 'Deportistas', '31040', 3);
INSERT INTO `address` VALUES (40, 'Calle Libertad', '111', NULL, 'Mirador', '31110', 1);
INSERT INTO `address` VALUES (41, 'Calle Libertad', '1201', NULL, 'Zona Centro', '31000', 1);
INSERT INTO `address` VALUES (42, 'Av. De la Juventud', '6500', NULL, 'Zona Dorada', '31210', 1);
INSERT INTO `address` VALUES (43, 'Calle Séptima', '45', NULL, 'Suburbio', '31120', 2);
INSERT INTO `address` VALUES (44, 'Av. Hidalgo', '230', NULL, 'Plaza Central', '31030', 3);
INSERT INTO `address` VALUES (45, 'Blvd. Río Sacramento', '3250', NULL, 'Río Sacramento', '31050', 1);
INSERT INTO `address` VALUES (46, 'Av. Universidad', '3000', NULL, 'Campus UACH', '31100', 1);
INSERT INTO `address` VALUES (47, 'Av. Tecnológico', '860', NULL, 'Zona Industrial', '31040', 4);
INSERT INTO `address` VALUES (48, 'Av. Homero', '4500', NULL, 'Complejo Deportivo', '31120', 1);
INSERT INTO `address` VALUES (49, 'Calle 4a', '102', NULL, 'Centro', '31000', 1);
INSERT INTO `address` VALUES (50, 'Blvd. Juan Pablo II', '999', NULL, 'Praderas del Sol', '31030', 1);
INSERT INTO `address` VALUES (51, 'Peso Pluma', '999', NULL, 'Chachau', '31030', 1);
INSERT INTO `address` VALUES (52, 'Miguel Angel Olea', '1007', '', 'Santa Rita', '31020', 1);
INSERT INTO `address` VALUES (53, 'Rio Otero', '7122', NULL, 'Unidad Vallarta', '31120', 1);
INSERT INTO `address` VALUES (55, 'Albernardo', '1234', NULL, 'Mirador', '31100', 1);
INSERT INTO `address` VALUES (56, 'Albernardo', '1234', NULL, 'Mirador', '31100', 1);
INSERT INTO `address` VALUES (58, 'Luxemburg', '4090', '123', 'Arboles', '21100', 3);
INSERT INTO `address` VALUES (59, 'Tumbada', '777', '', 'Tumbado', '90000', 5);
INSERT INTO `address` VALUES (60, '54', '4000', '', 'Rose', '31030', 1);
INSERT INTO `address` VALUES (61, 'Tercera', '3', '', 'Centro', '31100', 1);
INSERT INTO `address` VALUES (62, 'Monte Alvan', '2134', '', 'Nombre de Dios', '31200', 1);
INSERT INTO `address` VALUES (63, '20 de noviembre', '1290', '', 'Centro', '31100', 1);
INSERT INTO `address` VALUES (64, '10 de Mayo', '2440', '', 'Niño Dios', '31100', 1);
INSERT INTO `address` VALUES (65, 'Valentine', '3824', '42', 'New Austin', '31002', 9);
INSERT INTO `address` VALUES (67, '80', '2000', '', 'Cerro de la Cruz', '31030', 1);
INSERT INTO `address` VALUES (68, 'Mulberry', '2121', '', 'All My Sons', '30000', 8);
INSERT INTO `address` VALUES (80, 'Saturno', '5080', '', 'Deportiva', '31100', 1);
INSERT INTO `address` VALUES (82, 'Paseo de la Victoria', '5677', '', 'Quintas del Sol', '31240', 1);
INSERT INTO `address` VALUES (83, 'kjk', 'nj', NULL, 'jnjk', '10101', 3);
INSERT INTO `address` VALUES (84, '54', '4040', NULL, 'Rosario', '31030', 1);
INSERT INTO `address` VALUES (85, 'Av. Tecnologico', '0000', NULL, 'Springs', '31100', 4);
INSERT INTO `address` VALUES (89, 'Calle', '212', '1', 'klskd', '12334', 2);
INSERT INTO `address` VALUES (90, '64', '4030', '', 'Rosario', '31030', 1);

-- ----------------------------
-- Table structure for blueprint
-- ----------------------------
DROP TABLE IF EXISTS `blueprint`;
CREATE TABLE `blueprint`  (
  `blueprint_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `creation_date` date NOT NULL,
  `version` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `format` enum('PDF','DWG','DOC','PNG') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `bp_type_id` int NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `scale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`blueprint_id`) USING BTREE,
  INDEX `project_id`(`project_id` ASC) USING BTREE,
  INDEX `bp_type_id`(`bp_type_id` ASC) USING BTREE,
  CONSTRAINT `blueprint_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `blueprint_ibfk_2` FOREIGN KEY (`bp_type_id`) REFERENCES `blueprint_type` (`bp_type_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blueprint
-- ----------------------------
INSERT INTO `blueprint` VALUES (1, 1, '2024-01-10', 1, 'Detailed layout of Urban Park', 'PDF', 1, '/blueprints/P01_plan.pdf', '0.111111111');
INSERT INTO `blueprint` VALUES (2, 1, '2024-01-12', 2, 'Structural design for Urban Park', 'DWG', 2, '/blueprints/P01_structure.dwg', '1.5');
INSERT INTO `blueprint` VALUES (3, 2, '2023-02-15', 1, 'Electrical layout for Office Building', 'PDF', 3, '/blueprints/P02_electrical.pdf', '0.09375');
INSERT INTO `blueprint` VALUES (4, 3, '2024-03-05', 4, 'Plumbing schematic for Residential Complex', 'PDF', 4, '/blueprints/P03_plumbing.pdf', '1.5');
INSERT INTO `blueprint` VALUES (5, 2, '2023-02-10', 1, 'Overview of site layout for Office Building', 'PDF', 5, '/blueprints/P02_site.pdf', '0.111111111');
INSERT INTO `blueprint` VALUES (6, 4, '2024-04-01', 1, 'Landscaping layout for Mall Revamp', 'PDF', 6, '/blueprints/P04_landscape.pdf', '0.145833333');
INSERT INTO `blueprint` VALUES (7, 5, '2022-06-01', 1, 'Foundation details for Waterfront Development', 'DWG', 7, '/blueprints/P05_foundation.dwg', '0.09375');
INSERT INTO `blueprint` VALUES (8, 6, '2023-03-05', 1, 'HVAC schematic for University Expansion', 'PDF', 8, '/blueprints/P06_hvac.pdf', '0.083333333');
INSERT INTO `blueprint` VALUES (9, 7, '2021-07-10', 1, 'Safety blueprint for Hospital', 'PDF', 9, '/blueprints/P07_safety.pdf', '0.111111111');
INSERT INTO `blueprint` VALUES (10, 8, '2024-06-15', 1, 'Interior details for Sports Arena', 'PDF', 10, '/blueprints/P08_interior.pdf', '0.097222222');

-- ----------------------------
-- Table structure for blueprint_type
-- ----------------------------
DROP TABLE IF EXISTS `blueprint_type`;
CREATE TABLE `blueprint_type`  (
  `bp_type_id` int NOT NULL AUTO_INCREMENT,
  `bp_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`bp_type_id`) USING BTREE,
  UNIQUE INDEX `bp_type`(`bp_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blueprint_type
-- ----------------------------
INSERT INTO `blueprint_type` VALUES (1, 'Architectural');
INSERT INTO `blueprint_type` VALUES (3, 'Electrical');
INSERT INTO `blueprint_type` VALUES (7, 'Foundation');
INSERT INTO `blueprint_type` VALUES (10, 'Interior');
INSERT INTO `blueprint_type` VALUES (6, 'Landscape');
INSERT INTO `blueprint_type` VALUES (8, 'Mechanical');
INSERT INTO `blueprint_type` VALUES (4, 'Plumbing');
INSERT INTO `blueprint_type` VALUES (9, 'Safety');
INSERT INTO `blueprint_type` VALUES (5, 'Site');
INSERT INTO `blueprint_type` VALUES (2, 'Structural');

-- ----------------------------
-- Table structure for budget
-- ----------------------------
DROP TABLE IF EXISTS `budget`;
CREATE TABLE `budget`  (
  `budget_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `stage_id` int NOT NULL,
  `total_service_cost` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `total_subcontractor_cost` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`budget_id`) USING BTREE,
  UNIQUE INDEX `unique_project_stage`(`project_id` ASC, `stage_id` ASC) USING BTREE,
  INDEX `fk_budget_stage_project1`(`project_id` ASC, `stage_id` ASC) USING BTREE,
  CONSTRAINT `fk_budget_stage_project1` FOREIGN KEY (`project_id`, `stage_id`) REFERENCES `stage_project` (`project_id`, `stage_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of budget
-- ----------------------------
INSERT INTO `budget` VALUES (1, 1, 1, 10000.00, 964.00, 10964.00);
INSERT INTO `budget` VALUES (2, 2, 3, 7500.00, 1250.00, 8750.00);
INSERT INTO `budget` VALUES (3, 2, 4, 5850.00, 1446.00, 7296.00);
INSERT INTO `budget` VALUES (4, 2, 5, 4900.00, 1283.75, 6183.75);
INSERT INTO `budget` VALUES (17, 1, 2, 3900.00, 0.00, 3900.00);
INSERT INTO `budget` VALUES (18, 12, 1, 9450.00, 10500.00, 19950.00);

-- ----------------------------
-- Table structure for business_unit
-- ----------------------------
DROP TABLE IF EXISTS `business_unit`;
CREATE TABLE `business_unit`  (
  `BU_id` int NOT NULL AUTO_INCREMENT,
  `BU_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`BU_id`) USING BTREE,
  UNIQUE INDEX `BU_name`(`BU_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of business_unit
-- ----------------------------
INSERT INTO `business_unit` VALUES (1, 'Commercial and Industrial');
INSERT INTO `business_unit` VALUES (6, 'Project Supervision and Management');
INSERT INTO `business_unit` VALUES (2, 'Residential Architectural Design');
INSERT INTO `business_unit` VALUES (3, 'Restoration and Rehabilitation');
INSERT INTO `business_unit` VALUES (4, 'Sustainability Consulting');
INSERT INTO `business_unit` VALUES (5, 'Urban Design and Landscape');

-- ----------------------------
-- Table structure for cfdi
-- ----------------------------
DROP TABLE IF EXISTS `cfdi`;
CREATE TABLE `cfdi`  (
  `cfdi_code` int NOT NULL AUTO_INCREMENT,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`cfdi_code`) USING BTREE,
  UNIQUE INDEX `description`(`description` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90101601 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cfdi
-- ----------------------------
INSERT INTO `cfdi` VALUES (80101507, 'Consultoría en administración de proyectos');
INSERT INTO `cfdi` VALUES (90101600, 'Servicios de construcción de edificios residenciales y no residenciales');
INSERT INTO `cfdi` VALUES (83121700, 'Servicios de diseño de interiores y paisajismo');
INSERT INTO `cfdi` VALUES (81141500, 'Servicios de ingeniería');
INSERT INTO `cfdi` VALUES (73151200, 'Servicios de inspección');
INSERT INTO `cfdi` VALUES (84111506, 'Servicios profesionales de arquitectura');
INSERT INTO `cfdi` VALUES (84111505, 'Servicios profesionales, científicos y técnicos');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `state_code` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`city_id`) USING BTREE,
  UNIQUE INDEX `city_name`(`city_name` ASC) USING BTREE,
  INDEX `state_code`(`state_code` ASC) USING BTREE,
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`state_code`) REFERENCES `state` (`state_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Contains information about cities, including state codes for reference.' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, 'Chihuahua', 'CH');
INSERT INTO `city` VALUES (2, 'Delicias', 'CH');
INSERT INTO `city` VALUES (3, 'Cuauhtémoc', 'CH');
INSERT INTO `city` VALUES (4, 'Parral', 'CH');
INSERT INTO `city` VALUES (5, 'Hermosillo', 'SO');
INSERT INTO `city` VALUES (6, 'Monterrey', 'NL');
INSERT INTO `city` VALUES (7, 'Guadalajara', 'JA');
INSERT INTO `city` VALUES (8, 'Ciudad Juarez', 'CH');
INSERT INTO `city` VALUES (9, 'Navojoa', 'SO');

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `company_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `rfc` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` enum('F','M') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `birth_date` date NULL DEFAULT NULL,
  `address_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE,
  INDEX `client_ibfk_1`(`address_id` ASC) USING BTREE,
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES (1, 'Carlos', 'González', 'Municipio de Chihuahua', 'GONC800101A90', 'carlos.g@example.com', 'M', '1990-06-27', 16);
INSERT INTO `client` VALUES (2, 'Anna', 'Pérez', 'Desarrollos Pérez', 'PEPA800101F80', 'ana.perez@perezarq.com', 'F', NULL, 17);
INSERT INTO `client` VALUES (3, 'Miguel', 'Torres', 'Torres Constructores', 'TOMI800101M15', 'miguel.torres@torrescon.com', 'M', NULL, 18);
INSERT INTO `client` VALUES (4, 'Laura', 'Martínez', NULL, 'MALA800101M35', 'laura.martinez@example.com', 'F', NULL, 19);
INSERT INTO `client` VALUES (5, 'Francisco', 'López', 'López Inmobiliaria', 'LOPF800101H30', 'francisco.lopez@lyasoc.com', 'M', NULL, 20);
INSERT INTO `client` VALUES (6, 'Gabriela', 'Sánchez', NULL, 'SAGG800101M60', 'gabriela.sanchez@example.com', 'F', NULL, 21);
INSERT INTO `client` VALUES (7, 'Roberto', 'Herrera', 'Herrera MAC', 'HERR800101A40', 'roberto.herrera@hingen.com', 'M', NULL, 22);
INSERT INTO `client` VALUES (8, 'Marisol', 'Ramos', NULL, 'RAMM800101R90', 'marisol.ramos@example.com', 'F', NULL, 23);
INSERT INTO `client` VALUES (9, 'Luis', 'Fernández', 'Fernández Desarrollo Urbano', 'FELU800101H33', 'luis.fernandez@example.com', 'M', NULL, 24);
INSERT INTO `client` VALUES (10, 'Patricia', 'Mendoza', 'Servicios Médicos Mendoza', 'MEPA800101M91', 'patricia.mendoza@msm.com', 'F', NULL, 25);
INSERT INTO `client` VALUES (11, 'Jorge', 'Castro', NULL, 'CAJA800101H77', 'jorge.castro@example.com', 'M', NULL, 26);
INSERT INTO `client` VALUES (12, 'Daniela', 'Salazar', 'OWA Abarrotes', 'SADA800101D97', 'daniela.salazar@sconstr.com', 'F', NULL, 27);
INSERT INTO `client` VALUES (13, 'Alejandro', 'Ruiz', NULL, 'RUAL800101D88', 'alejandro.ruiz@example.com', 'M', NULL, 28);
INSERT INTO `client` VALUES (14, 'Carmen', 'Espinoza', 'Espinoza Ferreterías', 'ESPC800101M90', 'carmen.espinoza@eferr.com', 'F', '2003-12-31', 29);
INSERT INTO `client` VALUES (15, 'Mario', 'Flores', NULL, 'FLMM800101A99', 'mario.flores@example.com', 'M', NULL, 30);
INSERT INTO `client` VALUES (16, 'Danna', 'DobleP', NULL, 'DADA800101G50', 'danna@doublep.com', 'F', NULL, 51);
INSERT INTO `client` VALUES (17, 'Alan', 'Palomino', 'Palominos CA', 'PADD800101P12', 'dirceu999@mail.com', 'M', NULL, 52);
INSERT INTO `client` VALUES (18, 'Las', 'Tiri', 'AA', 'TIL20030919', 'a@gmail,com', 'M', NULL, 2);
INSERT INTO `client` VALUES (19, 'Lastiri', 'Lopez', 'Meta', 'LOL20020901', 'lastiri@lopez.com', 'M', NULL, 12);
INSERT INTO `client` VALUES (20, 'Kellin', 'Quinn', 'SWS', 'QUK19860428', 'sonicxsebas@gmail.com', 'M', NULL, NULL);
INSERT INTO `client` VALUES (22, 'Benjamin', 'Bautista', NULL, 'BAB20030914', 'benjx@gmail.com', 'M', NULL, 55);
INSERT INTO `client` VALUES (26, 'Angela', 'Aguilar', '', 'AGA20001216', 'angela@aguiilar.com', 'F', NULL, 58);
INSERT INTO `client` VALUES (27, 'Natanael', 'Cano', 'CT', 'CAN20000721', 'CT@gmail.com', 'M', NULL, 59);
INSERT INTO `client` VALUES (28, 'Claudia', 'Flores', '', 'FLC19730613', 'clauflores@gmail.com', 'F', NULL, 60);
INSERT INTO `client` VALUES (29, 'Leslie', 'Lopez', 'ENHYPHEN', 'LOL20070831', 'l3sl13@gmail.com', 'F', NULL, 61);
INSERT INTO `client` VALUES (31, 'Adan', 'Trejo', 'Fort', 'TRA20031218', 'fortnite89@gmail.com', 'M', NULL, 63);
INSERT INTO `client` VALUES (32, 'Arturo', 'Medina', '', 'MEA20041014', 'arthurmedin@outlook.com', 'M', NULL, 64);
INSERT INTO `client` VALUES (33, 'John', 'Marston', 'Robberts', 'MAJ19841212', 'johnmarston123@rdr.com', 'M', NULL, 65);
INSERT INTO `client` VALUES (35, 'Abigail', 'Platero', '', 'PLA20030808', 'andy0@outlook.com', 'F', '2003-08-08', 67);
INSERT INTO `client` VALUES (36, 'Tyler', 'Joseph', 'TOP', 'JOT19801226', 'tylerjoseph@top.com', 'M', '1980-12-26', 68);
INSERT INTO `client` VALUES (38, 'Martin', 'Lopez', 'Los Pescadon', 'LOM19731112', 'mar1973@gmail,com', 'M', '1973-11-12', 84);

-- ----------------------------
-- Table structure for client_phone
-- ----------------------------
DROP TABLE IF EXISTS `client_phone`;
CREATE TABLE `client_phone`  (
  `client_id` int NOT NULL,
  `phone_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`client_id`, `phone_number`) USING BTREE,
  CONSTRAINT `client_phone_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of client_phone
-- ----------------------------
INSERT INTO `client_phone` VALUES (1, '6145679228');
INSERT INTO `client_phone` VALUES (1, '6147654311');
INSERT INTO `client_phone` VALUES (2, '6142345688');
INSERT INTO `client_phone` VALUES (3, '6393456789');
INSERT INTO `client_phone` VALUES (4, '6254567890');
INSERT INTO `client_phone` VALUES (5, '6145678901');
INSERT INTO `client_phone` VALUES (6, '6276789012');
INSERT INTO `client_phone` VALUES (7, '6147890123');
INSERT INTO `client_phone` VALUES (8, '6398901234');
INSERT INTO `client_phone` VALUES (9, '6149012345');
INSERT INTO `client_phone` VALUES (10, '6140123456');
INSERT INTO `client_phone` VALUES (11, '6251234567');
INSERT INTO `client_phone` VALUES (12, '6142345678');
INSERT INTO `client_phone` VALUES (13, '6273456789');
INSERT INTO `client_phone` VALUES (14, '6144567890');
INSERT INTO `client_phone` VALUES (15, '6141250091');
INSERT INTO `client_phone` VALUES (15, '6395678901');
INSERT INTO `client_phone` VALUES (17, '6142036177');
INSERT INTO `client_phone` VALUES (18, '6541237890');
INSERT INTO `client_phone` VALUES (19, '6121234567');
INSERT INTO `client_phone` VALUES (20, '6567894321');
INSERT INTO `client_phone` VALUES (22, '6143669266');
INSERT INTO `client_phone` VALUES (26, '6220901111');
INSERT INTO `client_phone` VALUES (27, '6201278967');
INSERT INTO `client_phone` VALUES (31, '6144409087');
INSERT INTO `client_phone` VALUES (33, '6140902121');
INSERT INTO `client_phone` VALUES (33, '6261237819');
INSERT INTO `client_phone` VALUES (35, '6140990000');
INSERT INTO `client_phone` VALUES (36, '6562102121');
INSERT INTO `client_phone` VALUES (38, '6142045190');
INSERT INTO `client_phone` VALUES (38, '6148909111');

-- ----------------------------
-- Table structure for contact_subcontractor
-- ----------------------------
DROP TABLE IF EXISTS `contact_subcontractor`;
CREATE TABLE `contact_subcontractor`  (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `subcontractor_id` int NOT NULL,
  `contact_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`contact_id`) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE,
  INDEX `subcontractor_id`(`subcontractor_id` ASC) USING BTREE,
  CONSTRAINT `contact_subcontractor_ibfk_1` FOREIGN KEY (`subcontractor_id`) REFERENCES `subcontractor` (`subcontractor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of contact_subcontractor
-- ----------------------------
INSERT INTO `contact_subcontractor` VALUES (1, 1, 'Juan García', 'juan.garcia@cdn.com');
INSERT INTO `contact_subcontractor` VALUES (2, 2, 'Ana Rodríguez', 'ana.rodriguez@ev.com');
INSERT INTO `contact_subcontractor` VALUES (3, 3, 'Miguel Torres', 'miguel.torres@cr.com');
INSERT INTO `contact_subcontractor` VALUES (4, 4, 'Luis Martínez', 'luis.martinez@ip.com');
INSERT INTO `contact_subcontractor` VALUES (5, 5, 'Pedro López', 'pedro.lopez@mdc.com');
INSERT INTO `contact_subcontractor` VALUES (6, 6, 'Carmen Espinoza', 'carmen.espinoza@ta.com');
INSERT INTO `contact_subcontractor` VALUES (7, 7, 'Roberto Herrera', 'roberto.herrera@se.com');
INSERT INTO `contact_subcontractor` VALUES (8, 8, 'María Castro', 'maria.castro@afc.com');
INSERT INTO `contact_subcontractor` VALUES (9, 9, 'Jorge Rivera', 'jorge.rivera@um.com');
INSERT INTO `contact_subcontractor` VALUES (10, 10, 'Daniel Blanco', 'daniel.blanco@edn.com');
INSERT INTO `contact_subcontractor` VALUES (12, 11, 'Juan Pérez', 'juan.perez@example.com');

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`  (
  `country_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `country_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`country_code`) USING BTREE,
  UNIQUE INDEX `country_name`(`country_name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Stores country codes and their names for international references.' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('AR', 'Argentina');
INSERT INTO `country` VALUES ('AU', 'Australia');
INSERT INTO `country` VALUES ('BR', 'Brazil');
INSERT INTO `country` VALUES ('CA', 'Canada');
INSERT INTO `country` VALUES ('CN', 'China');
INSERT INTO `country` VALUES ('CO', 'Colombia');
INSERT INTO `country` VALUES ('FR', 'France');
INSERT INTO `country` VALUES ('DE', 'Germany');
INSERT INTO `country` VALUES ('IN', 'India');
INSERT INTO `country` VALUES ('IT', 'Italy');
INSERT INTO `country` VALUES ('JP', 'Japan');
INSERT INTO `country` VALUES ('MX', 'Mexico');
INSERT INTO `country` VALUES ('NL', 'Netherlands');
INSERT INTO `country` VALUES ('NZ', 'New Zealand');
INSERT INTO `country` VALUES ('PT', 'Portugal');
INSERT INTO `country` VALUES ('RU', 'Russia');
INSERT INTO `country` VALUES ('KR', 'South Korea');
INSERT INTO `country` VALUES ('ES', 'Spain');
INSERT INTO `country` VALUES ('CH', 'Switzerland');
INSERT INTO `country` VALUES ('GB', 'United Kingdom');
INSERT INTO `country` VALUES ('US', 'United States');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `manager_id` int NOT NULL,
  PRIMARY KEY (`department_id`) USING BTREE,
  UNIQUE INDEX `department_name`(`department_name` ASC) USING BTREE,
  INDEX `manager_id`(`manager_id` ASC) USING BTREE,
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`employee_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, 'Design and Architecture', 2);
INSERT INTO `department` VALUES (2, 'Structural Engineering', 4);
INSERT INTO `department` VALUES (3, 'MEP', 7);
INSERT INTO `department` VALUES (4, 'Project Management', 3);
INSERT INTO `department` VALUES (5, 'Quality and Safety Control', 8);
INSERT INTO `department` VALUES (6, 'Budgeting and Procurement', 6);
INSERT INTO `department` VALUES (7, 'Marketing and Sales', 10);
INSERT INTO `department` VALUES (8, 'Finance and Accounting', 9);
INSERT INTO `department` VALUES (9, 'Human Resources', 15);
INSERT INTO `department` VALUES (10, 'Legal and Compliance', 14);

-- ----------------------------
-- Table structure for doc_cat
-- ----------------------------
DROP TABLE IF EXISTS `doc_cat`;
CREATE TABLE `doc_cat`  (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`cat_id`) USING BTREE,
  UNIQUE INDEX `category_name`(`category_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doc_cat
-- ----------------------------
INSERT INTO `doc_cat` VALUES (5, 'Environmental');
INSERT INTO `doc_cat` VALUES (6, 'Inspection');
INSERT INTO `doc_cat` VALUES (1, 'Legal');
INSERT INTO `doc_cat` VALUES (2, 'Planning');
INSERT INTO `doc_cat` VALUES (4, 'Safety');
INSERT INTO `doc_cat` VALUES (3, 'Technical');

-- ----------------------------
-- Table structure for document
-- ----------------------------
DROP TABLE IF EXISTS `document`;
CREATE TABLE `document`  (
  `document_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `document_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Name of the document, such as permits or specifications.',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `version` int NOT NULL,
  `cat_id` int NOT NULL,
  PRIMARY KEY (`document_id`) USING BTREE,
  INDEX `project_id`(`project_id` ASC) USING BTREE,
  INDEX `document_ibfk_2`(`cat_id` ASC) USING BTREE,
  CONSTRAINT `document_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `document_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `doc_cat` (`cat_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of document
-- ----------------------------
INSERT INTO `document` VALUES (1, 1, 'Building Permit', 'Official permit to commence construction for Urban Park', '/documents/P01_permit.pdf', 1, 1);
INSERT INTO `document` VALUES (2, 1, 'Construction Plans', 'Detailed architectural plans for Urban Park', '/documents/P01_plans.pdf', 1, 2);
INSERT INTO `document` VALUES (3, 1, 'Technical Specifications', 'Specifications for materials and methods for Urban Park', '/documents/P01_specifications.pdf', 1, 3);
INSERT INTO `document` VALUES (4, 1, 'Safety and Health Plan', 'Safety measures plan for construction activities', '/documents/P01_safety.pdf', 1, 4);
INSERT INTO `document` VALUES (5, 2, 'Building Permit', 'Official permit to commence construction for Office Building', '/documents/P02_permit.pdf', 2, 1);
INSERT INTO `document` VALUES (6, 2, 'Construction Plans', 'Architectural plans for Office Building Project', '/documents/P02_plans.pdf', 1, 2);
INSERT INTO `document` VALUES (7, 3, 'Environmental Impact Report', 'Environmental considerations for Residential Complex', '/documents/P03_environment.pdf', 1, 5);
INSERT INTO `document` VALUES (8, 3, 'Zoning Approval', 'Approval document for zoning compliance', '/documents/P03_zoning.pdf', 1, 1);
INSERT INTO `document` VALUES (9, 4, 'Structural Analysis', 'Analysis of structure requirements for Mall Revamp', '/documents/P04_structural.pdf', 1, 3);
INSERT INTO `document` VALUES (10, 5, 'Final Inspection Report', 'Report of the final inspection for Waterfront Development', '/documents/P05_inspection.pdf', 2, 6);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `birth_date` date NOT NULL,
  `rfc` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` enum('F','M') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address_id` int NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`employee_id`) USING BTREE,
  UNIQUE INDEX `rfc`(`rfc` ASC) USING BTREE,
  INDEX `employee_ibfk_1`(`address_id` ASC) USING BTREE,
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 'John', 'Doe', '1990-01-15', 'JDOE900115CHH', 'M', 1, 'j.doe@designandarchitecture.com');
INSERT INTO `employee` VALUES (2, 'Alan', 'Rivas', '1985-03-20', 'ARIV850320CHH', 'M', 2, 'a.rivas@designandarchitecture.com');
INSERT INTO `employee` VALUES (3, 'John', 'Smith', '1987-02-10', 'JSMI870210CHH', 'M', 3, 'j.smith@financeandaccounting.com');
INSERT INTO `employee` VALUES (4, 'John', 'Marston', '1988-05-05', 'JMARS880505CH', 'M', 4, 'j.marston@structuralengineering.com');
INSERT INTO `employee` VALUES (5, 'Arthur', 'Morgan', '1990-09-12', 'AMOR900912CHH', 'M', 5, 'a.morgan@structuralengineering.com');
INSERT INTO `employee` VALUES (6, 'Susan', 'Brown', '1983-11-22', 'SBRO831122CHH', 'F', 6, 's.brown@designandarchitecture.com');
INSERT INTO `employee` VALUES (7, 'Robert', 'Taylor', '1986-08-15', 'RTAY860815CHH', 'M', 7, 'r.taylor@mep.com');
INSERT INTO `employee` VALUES (8, 'Emily', 'Davis', '1992-07-30', 'EDAV920730CHH', 'F', 8, 'e.davis@qualityandsafetycontrol.com');
INSERT INTO `employee` VALUES (9, 'Michael', 'Johnson', '1991-04-17', 'MJOH910417CHH', 'M', 9, 'm.johnson@projectmanagement.com');
INSERT INTO `employee` VALUES (10, 'Jessica', 'Miller', '1993-05-08', 'JMIL930508CHH', 'F', 10, 'j.miller@structuralengineering.com');
INSERT INTO `employee` VALUES (11, 'David', 'Wilson', '1984-12-21', 'DWIL841221CHH', 'M', 11, 'd.wilson@budgetingandprocurement.com');
INSERT INTO `employee` VALUES (12, 'Sarah', 'Lee', '1989-06-18', 'SLEE890618CHH', 'F', 12, 's.lee@qualityandsafetycontrol.com');
INSERT INTO `employee` VALUES (13, 'Karen', 'Martinez', '1995-09-25', 'KMAR950925CHH', 'F', 13, 'k.martinez@structuralengineering.com');
INSERT INTO `employee` VALUES (14, 'Daniel', 'White', '1982-10-12', 'DWHI821012CHH', 'M', 14, 'd.white@qualityandsafetycontrol.com');
INSERT INTO `employee` VALUES (15, 'Linda', 'Lopez', '1988-02-28', 'LLOP880228CHH', 'F', 15, 'l.lopez@budgetingandprocurement.com');
INSERT INTO `employee` VALUES (16, 'Victor', 'Gomez', '2003-09-06', 'GOV20030906', 'M', 1, 'v.gomez@structuralengineering.com');
INSERT INTO `employee` VALUES (17, 'Ana', 'Lopez', '1990-05-15', 'LOA19900515', 'F', 1, 'a.lopez@structuralengineering.com');
INSERT INTO `employee` VALUES (19, 'Alan', 'Rivas', '2003-12-24', 'RIA20031224', 'M', 1, NULL);
INSERT INTO `employee` VALUES (20, 'AAA', 'BB', '2003-09-09', 'BBA20030909', 'M', 1, NULL);
INSERT INTO `employee` VALUES (27, 'David', 'Martinez', '2004-12-14', 'MAD20041214', 'M', NULL, NULL);
INSERT INTO `employee` VALUES (49, 'Victor', 'OWO', '2003-09-06', 'OWV20030906', 'M', NULL, NULL);
INSERT INTO `employee` VALUES (51, 'Thomas', 'Shelby', '1908-10-06', 'SHT19081006', 'M', NULL, 't.shelby@designandarchitecture.com');
INSERT INTO `employee` VALUES (52, 'Diego', 'Quiroz', '2004-04-16', 'QUD20040416', 'M', NULL, 'd.quiroz@designandarchitecture.com');
INSERT INTO `employee` VALUES (53, 'Vikthor', 'Hinojos', '2004-05-13', 'HIV20040513', 'M', NULL, 'v.hinojos@designandarchitecture.com');
INSERT INTO `employee` VALUES (54, 'Andrea', 'Marinelarena', '2003-11-24', 'MAA20031124', 'F', NULL, 'a.marinelarena@structuralengineering.com');
INSERT INTO `employee` VALUES (56, 'Aljeandor', 'dasd', '2024-12-05', 'DAA20241205', 'M', 89, NULL);
INSERT INTO `employee` VALUES (57, 'Danna', 'Lopez', '2003-02-23', 'LOD20030223', 'F', 90, NULL);

-- ----------------------------
-- Table structure for employee_history
-- ----------------------------
DROP TABLE IF EXISTS `employee_history`;
CREATE TABLE `employee_history`  (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `performed_by_user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`history_id`) USING BTREE,
  INDEX `fk_history_employee`(`employee_id` ASC) USING BTREE,
  CONSTRAINT `fk_history_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employee_history
-- ----------------------------
INSERT INTO `employee_history` VALUES (2, 16, 'CREATED', '2024-12-01 00:10:52', 'root@localhost');
INSERT INTO `employee_history` VALUES (3, 17, 'CREATED', '2024-12-01 01:00:00', 'root@localhost');
INSERT INTO `employee_history` VALUES (5, 19, 'CREATED', '2024-12-01 01:21:34', 'root@localhost');
INSERT INTO `employee_history` VALUES (6, 20, 'CREATED', '2024-12-03 18:13:04', 'root@localhost');
INSERT INTO `employee_history` VALUES (7, 27, 'CREATED', '2024-12-05 13:54:01', 'root@localhost');
INSERT INTO `employee_history` VALUES (11, 51, 'CREATED', '2024-12-06 17:55:31', 'root@localhost');
INSERT INTO `employee_history` VALUES (12, 52, 'CREATED', '2024-12-06 18:10:26', 'root@localhost');
INSERT INTO `employee_history` VALUES (13, 53, 'CREATED', '2024-12-06 18:22:36', 'root@localhost');
INSERT INTO `employee_history` VALUES (14, 54, 'CREATED', '2024-12-11 12:24:44', 'root@localhost');

-- ----------------------------
-- Table structure for employee_phone
-- ----------------------------
DROP TABLE IF EXISTS `employee_phone`;
CREATE TABLE `employee_phone`  (
  `employee_id` int NOT NULL,
  `phone_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`employee_id`, `phone_number`) USING BTREE,
  CONSTRAINT `employee_phone_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employee_phone
-- ----------------------------
INSERT INTO `employee_phone` VALUES (2, '614-567-8901');
INSERT INTO `employee_phone` VALUES (3, '639-234-5678');
INSERT INTO `employee_phone` VALUES (4, '614-345-6789');
INSERT INTO `employee_phone` VALUES (5, '625-456-7890');
INSERT INTO `employee_phone` VALUES (6, '614-567-8910');
INSERT INTO `employee_phone` VALUES (7, '627-678-9012');
INSERT INTO `employee_phone` VALUES (8, '614-789-0123');
INSERT INTO `employee_phone` VALUES (9, '639-890-1234');
INSERT INTO `employee_phone` VALUES (10, '614-901-2345');
INSERT INTO `employee_phone` VALUES (11, '614-012-3456');
INSERT INTO `employee_phone` VALUES (12, '627-123-4567');
INSERT INTO `employee_phone` VALUES (13, '625-234-5678');
INSERT INTO `employee_phone` VALUES (14, '614-345-6789');
INSERT INTO `employee_phone` VALUES (15, '614-456-7890');
INSERT INTO `employee_phone` VALUES (16, '6143214567');
INSERT INTO `employee_phone` VALUES (16, '6261234321');
INSERT INTO `employee_phone` VALUES (17, '0987654321');
INSERT INTO `employee_phone` VALUES (17, '1234567890');
INSERT INTO `employee_phone` VALUES (19, '1234567890');
INSERT INTO `employee_phone` VALUES (20, '5142319809');
INSERT INTO `employee_phone` VALUES (27, '6391552152');
INSERT INTO `employee_phone` VALUES (51, '6141788696');
INSERT INTO `employee_phone` VALUES (52, '6149871127');
INSERT INTO `employee_phone` VALUES (53, '6149874327');
INSERT INTO `employee_phone` VALUES (54, '6148901111');
INSERT INTO `employee_phone` VALUES (56, '7879798');
INSERT INTO `employee_phone` VALUES (57, '6143690326');

-- ----------------------------
-- Table structure for employee_position
-- ----------------------------
DROP TABLE IF EXISTS `employee_position`;
CREATE TABLE `employee_position`  (
  `position_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `department_id` int NOT NULL,
  `BU_id` int NOT NULL,
  `JP_id` int NOT NULL,
  `SP_id` int NOT NULL,
  `hire_date` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `exit_date` date NULL DEFAULT NULL,
  `monthly_salary` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`position_id`) USING BTREE,
  INDEX `employee_id`(`employee_id` ASC) USING BTREE,
  INDEX `BU_id`(`BU_id` ASC) USING BTREE,
  INDEX `JP_id`(`JP_id` ASC) USING BTREE,
  INDEX `SP_id`(`SP_id` ASC) USING BTREE,
  INDEX `employee_position_ibfk_2`(`department_id` ASC) USING BTREE,
  CONSTRAINT `employee_position_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `employee_position_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `employee_position_ibfk_3` FOREIGN KEY (`BU_id`) REFERENCES `business_unit` (`BU_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `employee_position_ibfk_4` FOREIGN KEY (`JP_id`) REFERENCES `job_position` (`JP_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `employee_position_ibfk_5` FOREIGN KEY (`SP_id`) REFERENCES `specialization` (`SP_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employee_position
-- ----------------------------
INSERT INTO `employee_position` VALUES (2, 2, 1, 1, 2, 3, '2019-09-10 00:00:00', NULL, 52000.00);
INSERT INTO `employee_position` VALUES (3, 3, 8, 6, 7, 8, '2019-09-10 00:00:00', NULL, 52000.00);
INSERT INTO `employee_position` VALUES (4, 4, 2, 1, 5, 5, '2020-07-20 00:00:00', NULL, 75000.00);
INSERT INTO `employee_position` VALUES (5, 5, 2, 3, 4, 4, '2022-02-15 00:00:00', NULL, 68000.00);
INSERT INTO `employee_position` VALUES (6, 6, 1, 1, 3, 2, '2018-05-20 00:00:00', NULL, 62000.00);
INSERT INTO `employee_position` VALUES (7, 7, 3, 3, 5, 5, '2021-03-14 00:00:00', '2023-06-30', 71000.00);
INSERT INTO `employee_position` VALUES (8, 8, 5, 4, 8, 7, '2020-08-05 00:00:00', NULL, 55000.00);
INSERT INTO `employee_position` VALUES (9, 9, 4, 6, 6, 6, '2019-10-02 00:00:00', NULL, 58000.00);
INSERT INTO `employee_position` VALUES (10, 10, 2, 2, 4, 4, '2021-01-12 00:00:00', NULL, 63000.00);
INSERT INTO `employee_position` VALUES (11, 11, 6, 5, 7, 8, '2017-04-09 00:00:00', NULL, 69000.00);
INSERT INTO `employee_position` VALUES (12, 12, 5, 4, 8, 7, '2020-11-03 00:00:00', '2023-05-15', 54000.00);
INSERT INTO `employee_position` VALUES (13, 13, 2, 1, 3, 2, '2022-06-15 00:00:00', NULL, 47000.00);
INSERT INTO `employee_position` VALUES (14, 14, 5, 5, 8, 7, '2018-07-18 00:00:00', '2022-03-01', 68000.00);
INSERT INTO `employee_position` VALUES (15, 15, 6, 5, 7, 9, '2019-12-01 00:00:00', NULL, 60000.00);
INSERT INTO `employee_position` VALUES (16, 16, 2, 3, 3, 4, '2024-11-30 00:00:00', NULL, 45000.00);
INSERT INTO `employee_position` VALUES (17, 17, 2, 1, 3, 5, '2024-01-01 00:00:00', NULL, 50000.00);
INSERT INTO `employee_position` VALUES (19, 19, 2, 1, 3, 5, '2024-01-01 00:00:00', NULL, 50000.00);
INSERT INTO `employee_position` VALUES (20, 20, 1, 1, 1, 1, '2024-09-12 00:00:00', NULL, 40000.00);
INSERT INTO `employee_position` VALUES (21, 27, 1, 1, 1, 1, '2024-12-05 00:00:00', NULL, 40000.00);
INSERT INTO `employee_position` VALUES (27, 49, 1, 1, 1, 1, NULL, NULL, 40000.00);
INSERT INTO `employee_position` VALUES (28, 51, 1, 1, 1, 1, NULL, NULL, 40000.00);
INSERT INTO `employee_position` VALUES (29, 52, 1, 2, 3, 5, NULL, NULL, 50000.00);
INSERT INTO `employee_position` VALUES (30, 53, 1, 2, 10, 10, NULL, NULL, 70000.00);
INSERT INTO `employee_position` VALUES (31, 54, 2, 3, 1, 2, '2024-12-11 00:00:00', NULL, 40000.00);
INSERT INTO `employee_position` VALUES (33, 56, 2, 3, 1, 1, '2024-12-11 00:00:00', NULL, 90000.00);
INSERT INTO `employee_position` VALUES (34, 57, 1, 1, 1, 10, '2024-12-11 00:00:00', NULL, 20000.00);

-- ----------------------------
-- Table structure for employee_stage
-- ----------------------------
DROP TABLE IF EXISTS `employee_stage`;
CREATE TABLE `employee_stage`  (
  `employee_id` int NOT NULL,
  `project_id` int NOT NULL,
  `stage_id` int NOT NULL,
  `assigned_date` date NOT NULL,
  PRIMARY KEY (`employee_id`, `project_id`, `stage_id`) USING BTREE,
  INDEX `fk_stage_project`(`project_id` ASC, `stage_id` ASC) USING BTREE,
  CONSTRAINT `fk_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_stage_project` FOREIGN KEY (`project_id`, `stage_id`) REFERENCES `stage_project` (`project_id`, `stage_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employee_stage
-- ----------------------------
INSERT INTO `employee_stage` VALUES (1, 1, 1, '2024-12-01');
INSERT INTO `employee_stage` VALUES (1, 1, 2, '2024-12-01');
INSERT INTO `employee_stage` VALUES (1, 10, 18, '2024-12-01');
INSERT INTO `employee_stage` VALUES (2, 11, 1, '2024-12-01');
INSERT INTO `employee_stage` VALUES (3, 2, 3, '2024-12-01');
INSERT INTO `employee_stage` VALUES (3, 2, 4, '2024-12-01');
INSERT INTO `employee_stage` VALUES (4, 2, 5, '2024-12-01');
INSERT INTO `employee_stage` VALUES (5, 3, 6, '2024-12-01');
INSERT INTO `employee_stage` VALUES (6, 3, 7, '2024-12-01');
INSERT INTO `employee_stage` VALUES (6, 4, 8, '2024-12-01');
INSERT INTO `employee_stage` VALUES (7, 4, 9, '2024-12-01');
INSERT INTO `employee_stage` VALUES (8, 5, 10, '2024-12-01');
INSERT INTO `employee_stage` VALUES (9, 6, 12, '2024-12-01');
INSERT INTO `employee_stage` VALUES (10, 6, 13, '2024-12-01');
INSERT INTO `employee_stage` VALUES (11, 7, 14, '2024-12-01');
INSERT INTO `employee_stage` VALUES (11, 7, 15, '2024-12-01');
INSERT INTO `employee_stage` VALUES (12, 8, 16, '2024-12-01');
INSERT INTO `employee_stage` VALUES (13, 9, 17, '2024-12-01');
INSERT INTO `employee_stage` VALUES (14, 10, 18, '2024-12-01');

-- ----------------------------
-- Table structure for estimated_cost
-- ----------------------------
DROP TABLE IF EXISTS `estimated_cost`;
CREATE TABLE `estimated_cost`  (
  `estimation_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `service_id` int NOT NULL,
  `estimated_hours` int NOT NULL,
  `estimated_service_cost` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`estimation_id`) USING BTREE,
  INDEX `stage_service_estimation_ibfk_1`(`project_id` ASC) USING BTREE,
  INDEX `stage_service_estimation_ibfk_3`(`service_id` ASC) USING BTREE,
  CONSTRAINT `estimated_cost_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `estimated_cost_ibfk_3` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of estimated_cost
-- ----------------------------
INSERT INTO `estimated_cost` VALUES (1, 1, 1, 20, 10000.00);
INSERT INTO `estimated_cost` VALUES (2, 1, 2, 10, 4500.00);
INSERT INTO `estimated_cost` VALUES (3, 12, 4, 15, 6000.00);
INSERT INTO `estimated_cost` VALUES (4, 1, 3, 20, 12000.00);
INSERT INTO `estimated_cost` VALUES (5, 1, 2, 10, 4500.00);
INSERT INTO `estimated_cost` VALUES (6, 1, 1, 15, 7500.00);
INSERT INTO `estimated_cost` VALUES (7, 2, 1, 15, 7500.00);
INSERT INTO `estimated_cost` VALUES (8, 2, 5, 25, 8750.00);
INSERT INTO `estimated_cost` VALUES (9, 3, 2, 23, 10350.00);
INSERT INTO `estimated_cost` VALUES (10, 4, 1, 9, 4500.00);
INSERT INTO `estimated_cost` VALUES (11, 4, 4, 19, 7600.00);
INSERT INTO `estimated_cost` VALUES (12, 5, 6, 19, 7220.00);
INSERT INTO `estimated_cost` VALUES (13, 6, 3, 29, 17400.00);
INSERT INTO `estimated_cost` VALUES (14, 7, 1, 11, 5500.00);
INSERT INTO `estimated_cost` VALUES (15, 8, 9, 10, 7000.00);
INSERT INTO `estimated_cost` VALUES (16, 8, 10, 5, 1250.00);
INSERT INTO `estimated_cost` VALUES (17, 9, 7, 2, 600.00);
INSERT INTO `estimated_cost` VALUES (18, 10, 1, 10, 5000.00);
INSERT INTO `estimated_cost` VALUES (19, 11, 9, 20, 14000.00);

-- ----------------------------
-- Table structure for invoice
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice`  (
  `invoice_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `stage_id` int NOT NULL,
  `client_id` int NOT NULL,
  `date_issued` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `subtotal` decimal(10, 2) NOT NULL,
  `total` decimal(10, 2) NOT NULL,
  `cfdi_code` int NOT NULL,
  PRIMARY KEY (`invoice_id`) USING BTREE,
  INDEX `project_id`(`project_id` ASC) USING BTREE,
  INDEX `stage_id`(`stage_id` ASC) USING BTREE,
  INDEX `client_id`(`client_id` ASC) USING BTREE,
  INDEX `cfdi_code`(`cfdi_code` ASC) USING BTREE,
  CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`stage_id`) REFERENCES `stage` (`stage_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `invoice_ibfk_4` FOREIGN KEY (`cfdi_code`) REFERENCES `cfdi` (`cfdi_code`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of invoice
-- ----------------------------
INSERT INTO `invoice` VALUES (1, 1, 1, 1, '2024-11-30 19:31:14', 10964.00, 12718.24, 73151200);
INSERT INTO `invoice` VALUES (16, 2, 3, 2, '2024-12-02 23:50:24', 7250.00, 8410.00, 73151200);
INSERT INTO `invoice` VALUES (18, 12, 1, 17, '2024-12-11 14:42:20', 19950.00, 23142.00, 73151200);

-- ----------------------------
-- Table structure for invoice_details
-- ----------------------------
DROP TABLE IF EXISTS `invoice_details`;
CREATE TABLE `invoice_details`  (
  `invdetail_id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `reference_id` int NOT NULL,
  `reference_type` enum('service','subcontractor') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours_worked` int NOT NULL,
  `total_cost` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`invdetail_id`) USING BTREE,
  INDEX `invoice_details_ibfk_1`(`invoice_id` ASC) USING BTREE,
  CONSTRAINT `invoice_details_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of invoice_details
-- ----------------------------
INSERT INTO `invoice_details` VALUES (1, 1, 1, 'service', 20, 10000.00);
INSERT INTO `invoice_details` VALUES (2, 1, 1, 'subcontractor', 8, 964.00);
INSERT INTO `invoice_details` VALUES (3, 16, 1, 'service', 12, 6000.00);
INSERT INTO `invoice_details` VALUES (4, 16, 11, 'subcontractor', 5, 1250.00);
INSERT INTO `invoice_details` VALUES (5, 18, 2, 'service', 21, 9450.00);
INSERT INTO `invoice_details` VALUES (6, 18, 4, 'subcontractor', 100, 10500.00);

-- ----------------------------
-- Table structure for job_position
-- ----------------------------
DROP TABLE IF EXISTS `job_position`;
CREATE TABLE `job_position`  (
  `JP_id` int NOT NULL AUTO_INCREMENT,
  `JP_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`JP_id`) USING BTREE,
  UNIQUE INDEX `JP_name`(`JP_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_position
-- ----------------------------
INSERT INTO `job_position` VALUES (10, '3D Visualizer');
INSERT INTO `job_position` VALUES (18, 'Accounting Assistant');
INSERT INTO `job_position` VALUES (12, 'BIM Consultant');
INSERT INTO `job_position` VALUES (7, 'Budget Coordinator');
INSERT INTO `job_position` VALUES (9, 'CAD Technician');
INSERT INTO `job_position` VALUES (20, 'Civil Engineer');
INSERT INTO `job_position` VALUES (15, 'Client Relations Specialist');
INSERT INTO `job_position` VALUES (23, 'Construction Manager');
INSERT INTO `job_position` VALUES (14, 'Cost Analyst');
INSERT INTO `job_position` VALUES (19, 'Cost Control Engineer');
INSERT INTO `job_position` VALUES (24, 'Design Architect');
INSERT INTO `job_position` VALUES (1, 'Director of Architecture');
INSERT INTO `job_position` VALUES (16, 'HR Coordinator');
INSERT INTO `job_position` VALUES (3, 'Junior Architect');
INSERT INTO `job_position` VALUES (25, 'MEP Coordinator');
INSERT INTO `job_position` VALUES (5, 'MEP Engineer');
INSERT INTO `job_position` VALUES (17, 'Payroll Specialist');
INSERT INTO `job_position` VALUES (13, 'Project Assistant');
INSERT INTO `job_position` VALUES (6, 'Project Manager');
INSERT INTO `job_position` VALUES (8, 'Quality and Safety Coordinator');
INSERT INTO `job_position` VALUES (2, 'Senior Architect');
INSERT INTO `job_position` VALUES (4, 'Structural Engineer');
INSERT INTO `job_position` VALUES (21, 'Structural Engineer Consultant');
INSERT INTO `job_position` VALUES (22, 'Sustainability Architect');
INSERT INTO `job_position` VALUES (11, 'Sustainability Specialist');

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`) USING BTREE,
  INDEX `fk_notifications_employee`(`employee_id` ASC) USING BTREE,
  CONSTRAINT `fk_notifications_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES (1, 3, 'La etapa \"2022-04-01\" del proyecto 2 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (2, 3, 'La etapa \"2023-04-01\" del proyecto 2 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (3, 4, 'La etapa \"2023-11-30\" del proyecto 2 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (4, 5, 'La etapa \"2024-06-01\" del proyecto 3 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (5, 6, 'La etapa \"2024-09-01\" del proyecto 3 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (6, 6, 'La etapa \"2024-05-15\" del proyecto 4 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (7, 7, 'La etapa \"2024-07-15\" del proyecto 4 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (8, 8, 'La etapa \"2022-07-15\" del proyecto 5 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (9, 9, 'La etapa \"2023-02-15\" del proyecto 6 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (10, 10, 'La etapa \"2024-01-30\" del proyecto 6 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (11, 11, 'La etapa \"2022-10-01\" del proyecto 7 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (12, 11, 'La etapa \"2022-10-30\" del proyecto 7 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (13, 12, 'La etapa \"2024-07-30\" del proyecto 8 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (14, 13, 'La etapa \"2024-02-10\" del proyecto 9 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (15, 1, 'La etapa \"2021-05-01\" del proyecto 10 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (16, 14, 'La etapa \"2021-05-01\" del proyecto 10 está atrasada.', '2024-12-01 00:40:26');
INSERT INTO `notifications` VALUES (17, 3, 'La etapa \"2022-04-01\" del proyecto 2 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (18, 3, 'La etapa \"2023-04-01\" del proyecto 2 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (19, 4, 'La etapa \"2023-11-30\" del proyecto 2 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (20, 5, 'La etapa \"2024-06-01\" del proyecto 3 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (21, 6, 'La etapa \"2024-09-01\" del proyecto 3 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (22, 6, 'La etapa \"2024-05-15\" del proyecto 4 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (23, 7, 'La etapa \"2024-07-15\" del proyecto 4 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (24, 8, 'La etapa \"2022-07-15\" del proyecto 5 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (25, 9, 'La etapa \"2023-02-15\" del proyecto 6 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (26, 10, 'La etapa \"2024-01-30\" del proyecto 6 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (27, 11, 'La etapa \"2022-10-01\" del proyecto 7 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (28, 11, 'La etapa \"2022-10-30\" del proyecto 7 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (29, 12, 'La etapa \"2024-07-30\" del proyecto 8 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (30, 13, 'La etapa \"2024-02-10\" del proyecto 9 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (31, 1, 'La etapa \"2021-05-01\" del proyecto 10 está atrasada.', '2024-12-01 17:01:09');
INSERT INTO `notifications` VALUES (32, 14, 'La etapa \"2021-05-01\" del proyecto 10 está atrasada.', '2024-12-01 17:01:09');

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `payment_date` date NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `status` enum('Completed','Pending') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pm_id` int NOT NULL COMMENT 'Reference to payment_methods table.',
  PRIMARY KEY (`payment_id`) USING BTREE,
  INDEX `fk_payment_methods`(`pm_id` ASC) USING BTREE,
  INDEX `payment_ibfk_1`(`invoice_id` ASC) USING BTREE,
  CONSTRAINT `fk_payment_methods` FOREIGN KEY (`pm_id`) REFERENCES `payment_methods` (`pm_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES (1, 1, '2024-01-30', 5000.00, 'Completed', 1);
INSERT INTO `payment` VALUES (2, 1, '2024-02-15', 10000.00, 'Pending', 2);
INSERT INTO `payment` VALUES (3, 2, '2024-03-15', 12000.00, 'Pending', 3);
INSERT INTO `payment` VALUES (4, 2, '2024-04-01', 8000.00, 'Completed', 1);
INSERT INTO `payment` VALUES (5, 3, '2022-03-05', 8000.00, 'Pending', 2);
INSERT INTO `payment` VALUES (6, 3, '2022-04-01', 4000.00, 'Pending', 3);
INSERT INTO `payment` VALUES (7, 4, '2022-06-01', 15000.00, 'Pending', 1);
INSERT INTO `payment` VALUES (8, 5, '2023-10-01', 22000.00, 'Pending', 2);
INSERT INTO `payment` VALUES (9, 6, '2024-06-15', 10000.00, 'Completed', 3);
INSERT INTO `payment` VALUES (10, 6, '2024-07-01', 8000.00, 'Pending', 1);
INSERT INTO `payment` VALUES (11, 7, '2024-08-15', 14000.00, 'Pending', 1);
INSERT INTO `payment` VALUES (12, 8, '2024-05-01', 21000.00, 'Pending', 2);
INSERT INTO `payment` VALUES (13, 9, '2024-07-01', 14000.00, 'Pending', 1);
INSERT INTO `payment` VALUES (14, 10, '2022-08-15', 25000.00, 'Pending', 2);
INSERT INTO `payment` VALUES (15, 11, '2022-09-01', 12000.00, 'Completed', 3);
INSERT INTO `payment` VALUES (16, 11, '2022-09-15', 8000.00, 'Pending', 1);
INSERT INTO `payment` VALUES (17, 12, '2023-02-20', 18000.00, 'Pending', 2);
INSERT INTO `payment` VALUES (18, 13, '2023-12-15', 22000.00, 'Pending', 3);
INSERT INTO `payment` VALUES (19, 14, '2021-08-01', 14000.00, 'Pending', 1);
INSERT INTO `payment` VALUES (20, 15, '2022-11-01', 15000.00, 'Pending', 2);
INSERT INTO `payment` VALUES (21, 16, '2024-06-30', 30000.00, 'Pending', 1);
INSERT INTO `payment` VALUES (23, 18, '2021-02-15', 22000.00, 'Pending', 3);

-- ----------------------------
-- Table structure for payment_methods
-- ----------------------------
DROP TABLE IF EXISTS `payment_methods`;
CREATE TABLE `payment_methods`  (
  `pm_id` int NOT NULL AUTO_INCREMENT,
  `pm_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Name of the payment method (e.g., Bank Transfer, Credit Card, Cash).',
  PRIMARY KEY (`pm_id`) USING BTREE,
  UNIQUE INDEX `pm_name`(`pm_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of payment_methods
-- ----------------------------
INSERT INTO `payment_methods` VALUES (1, 'Bank Transfer');
INSERT INTO `payment_methods` VALUES (3, 'Cash');
INSERT INTO `payment_methods` VALUES (2, 'Credit Card');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `client_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status_id` int NOT NULL,
  `address_id` int NULL DEFAULT NULL,
  `estimated_total_cost` decimal(10, 2) NULL DEFAULT 0.00,
  `total_cost` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`project_id`) USING BTREE,
  UNIQUE INDEX `project_name`(`project_name` ASC) USING BTREE,
  INDEX `client_id`(`client_id` ASC) USING BTREE,
  INDEX `site`(`address_id` ASC) USING BTREE,
  INDEX `project_ibfk_3`(`status_id` ASC) USING BTREE,
  CONSTRAINT `project_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `project_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `project_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `project_status` (`status_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (1, 'Urban Park Development', 'Development of a new urban park', 1, '2024-01-15', '2025-12-31', 1, 41, 38500.00, 14864.00);
INSERT INTO `project` VALUES (2, 'Office Building Project', 'Construction of a 10-story building', 2, '2022-03-01', '2023-11-30', 2, 42, 16250.00, 22229.75);
INSERT INTO `project` VALUES (3, 'Residential Complex', 'Design for a residential complex', 3, '2024-05-01', '2025-06-15', 3, 43, 10350.00, NULL);
INSERT INTO `project` VALUES (4, 'Shopping Mall Revamp', 'Renovation of a shopping mall', 4, '2024-04-01', '2025-08-01', 1, 44, 12100.00, NULL);
INSERT INTO `project` VALUES (5, 'Waterfront Development', 'Mixed-use waterfront development', 5, '2022-06-01', '2023-08-15', 2, 45, 7220.00, NULL);
INSERT INTO `project` VALUES (6, 'University Expansion', 'Expansion of university facilities', 6, '2023-02-01', '2024-12-20', 1, 46, 17400.00, NULL);
INSERT INTO `project` VALUES (7, 'Hospital Modernization', 'Modernization of hospital infrastructure', 10, '2021-07-10', '2022-10-30', 2, 47, 5500.00, NULL);
INSERT INTO `project` VALUES (8, 'Sports Arena Construction', 'New construction of a sports arena', 7, '2024-06-01', '2025-09-30', 3, 48, 8250.00, NULL);
INSERT INTO `project` VALUES (9, 'Downtown Residential Tower', 'High-rise residential tower', 9, '2023-10-05', '2025-05-30', 1, 49, 600.00, NULL);
INSERT INTO `project` VALUES (10, 'Airport Terminal Upgrade', 'Upgrading airport terminal facilities', 12, '2021-01-15', '2022-04-15', 2, 50, 5000.00, NULL);
INSERT INTO `project` VALUES (11, 'Casa Danna', 'Descripción del proyecto', 16, '2024-12-01', '2024-11-28', 1, 51, 14000.00, NULL);
INSERT INTO `project` VALUES (12, 'Casa Se evapora', 'Casa diseno de humo', 17, '2024-12-24', '2025-06-01', 1, 52, 6000.00, 19950.00);
INSERT INTO `project` VALUES (13, 'Moon House', 'Casa lunar gigante', 7, '2024-12-13', '2024-12-07', 3, 80, 0.00, 0.00);
INSERT INTO `project` VALUES (15, 'Horizonte Fluido', 'Edificio de oficinas con gran diseño', 32, '2026-01-16', '2026-04-02', 3, 82, 0.00, 0.00);
INSERT INTO `project` VALUES (17, 'Salty Springs', 'Fraccionamiento', 31, '2024-12-20', '2025-02-12', 1, 85, 0.00, 0.00);

-- ----------------------------
-- Table structure for project_status
-- ----------------------------
DROP TABLE IF EXISTS `project_status`;
CREATE TABLE `project_status`  (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`status_id`) USING BTREE,
  UNIQUE INDEX `status_name`(`status_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of project_status
-- ----------------------------
INSERT INTO `project_status` VALUES (2, 'Completed');
INSERT INTO `project_status` VALUES (1, 'In Progress');
INSERT INTO `project_status` VALUES (3, 'Pending');

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services`  (
  `service_id` int NOT NULL AUTO_INCREMENT,
  `service_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `hourly_rate` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`service_id`) USING BTREE,
  UNIQUE INDEX `service_name`(`service_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES (1, 'Conceptual Design', 'Creation of ideas and concepts for the project', 500.00);
INSERT INTO `services` VALUES (2, 'Architectural Drafting', 'Detailed architectural blueprints', 450.00);
INSERT INTO `services` VALUES (3, 'Structural Engineering', 'Structural integrity analysis', 600.00);
INSERT INTO `services` VALUES (4, 'Electrical Engineering', 'Design of electrical systems', 400.00);
INSERT INTO `services` VALUES (5, 'Plumbing Engineering', 'Design of plumbing systems', 350.00);
INSERT INTO `services` VALUES (6, 'HVAC Design', 'Design of heating and ventilation systems', 380.00);
INSERT INTO `services` VALUES (7, 'Interior Design', 'Design of interior spaces', 300.00);
INSERT INTO `services` VALUES (8, 'Landscape Design', 'Design of outdoor areas and landscaping', 320.00);
INSERT INTO `services` VALUES (9, 'Project Management', 'Coordination and management of the project', 700.00);
INSERT INTO `services` VALUES (10, 'Site Survey', 'Topographical survey of the site', 250.00);
INSERT INTO `services` VALUES (11, 'Environmental Analysis', 'Evaluation of environmental impact', 450.00);
INSERT INTO `services` VALUES (12, 'Construction Supervision', 'Supervision of construction work', 550.00);
INSERT INTO `services` VALUES (13, 'Cost Estimation', 'Cost calculation and analysis', 400.00);
INSERT INTO `services` VALUES (14, 'Permits and Compliance', 'Management of permits and regulatory compliance', 500.00);
INSERT INTO `services` VALUES (15, 'BIM Modeling', 'Building Information Modeling (BIM)', 650.00);

-- ----------------------------
-- Table structure for specialization
-- ----------------------------
DROP TABLE IF EXISTS `specialization`;
CREATE TABLE `specialization`  (
  `SP_id` int NOT NULL AUTO_INCREMENT,
  `specialization_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`SP_id`) USING BTREE,
  UNIQUE INDEX `specialization_name`(`specialization_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of specialization
-- ----------------------------
INSERT INTO `specialization` VALUES (8, 'Advanced CAD Modelling');
INSERT INTO `specialization` VALUES (4, 'Budget and Financial Planning');
INSERT INTO `specialization` VALUES (9, 'Building Regulations Compliance');
INSERT INTO `specialization` VALUES (6, 'Building Retrofitting');
INSERT INTO `specialization` VALUES (2, 'Compensation and Benefits');
INSERT INTO `specialization` VALUES (1, 'Employee Relations');
INSERT INTO `specialization` VALUES (10, 'MEP Systems Optimization');
INSERT INTO `specialization` VALUES (7, 'Renewable Energy Integration');
INSERT INTO `specialization` VALUES (3, 'Tax Compliance');
INSERT INTO `specialization` VALUES (5, 'Urban Infrastructure Design');

-- ----------------------------
-- Table structure for specialization_subcon
-- ----------------------------
DROP TABLE IF EXISTS `specialization_subcon`;
CREATE TABLE `specialization_subcon`  (
  `specialization_id` int NOT NULL AUTO_INCREMENT,
  `specialization_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`specialization_id`) USING BTREE,
  UNIQUE INDEX `specialization_name`(`specialization_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of specialization_subcon
-- ----------------------------
INSERT INTO `specialization_subcon` VALUES (6, 'Architectural Design');
INSERT INTO `specialization_subcon` VALUES (3, 'Commercial Construction');
INSERT INTO `specialization_subcon` VALUES (7, 'Electrical Engineering');
INSERT INTO `specialization_subcon` VALUES (1, 'General Contracting');
INSERT INTO `specialization_subcon` VALUES (8, 'Interior Finishing');
INSERT INTO `specialization_subcon` VALUES (5, 'Material Supply');
INSERT INTO `specialization_subcon` VALUES (2, 'Renewable Energy');
INSERT INTO `specialization_subcon` VALUES (10, 'Steel Fabrication');
INSERT INTO `specialization_subcon` VALUES (4, 'Structural Engineering');
INSERT INTO `specialization_subcon` VALUES (9, 'Urban Planning');

-- ----------------------------
-- Table structure for stage
-- ----------------------------
DROP TABLE IF EXISTS `stage`;
CREATE TABLE `stage`  (
  `stage_id` int NOT NULL AUTO_INCREMENT,
  `stage_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`stage_id`) USING BTREE,
  UNIQUE INDEX `stage_name`(`stage_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stage
-- ----------------------------
INSERT INTO `stage` VALUES (3, 'Concept Approval');
INSERT INTO `stage` VALUES (4, 'Construction Start');
INSERT INTO `stage` VALUES (8, 'Detailed Design');
INSERT INTO `stage` VALUES (17, 'Electrical Installation');
INSERT INTO `stage` VALUES (14, 'Environmental Review');
INSERT INTO `stage` VALUES (10, 'Equipment Installation');
INSERT INTO `stage` VALUES (5, 'Final Inspection');
INSERT INTO `stage` VALUES (9, 'Groundbreaking');
INSERT INTO `stage` VALUES (18, 'Handover');
INSERT INTO `stage` VALUES (1, 'Initial Design');
INSERT INTO `stage` VALUES (15, 'Interior Finishing');
INSERT INTO `stage` VALUES (16, 'Landscape Work');
INSERT INTO `stage` VALUES (11, 'Project Closeout');
INSERT INTO `stage` VALUES (13, 'Quality Assurance');
INSERT INTO `stage` VALUES (12, 'Site Inspection');
INSERT INTO `stage` VALUES (6, 'Site Preparation');
INSERT INTO `stage` VALUES (7, 'Structural Analysis');
INSERT INTO `stage` VALUES (2, 'Technical Plans');

-- ----------------------------
-- Table structure for stage_project
-- ----------------------------
DROP TABLE IF EXISTS `stage_project`;
CREATE TABLE `stage_project`  (
  `project_id` int NOT NULL,
  `stage_id` int NOT NULL,
  `start_date` datetime NOT NULL,
  `due_date` date NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`stage_id`, `project_id`) USING BTREE,
  INDEX `project_id`(`project_id` ASC) USING BTREE,
  INDEX `stage_project_ibfk_3`(`status_id` ASC) USING BTREE,
  INDEX `stage_id`(`stage_id` ASC) USING BTREE,
  CONSTRAINT `stage_project_ibfk_1` FOREIGN KEY (`stage_id`) REFERENCES `stage` (`stage_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `stage_project_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stage_project_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `stage_status` (`status_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stage_project
-- ----------------------------
INSERT INTO `stage_project` VALUES (1, 1, '2024-01-15 00:00:00', '2025-02-28', 3);
INSERT INTO `stage_project` VALUES (11, 1, '2024-12-01 00:00:00', '2025-01-15', 2);
INSERT INTO `stage_project` VALUES (12, 1, '2024-12-10 00:00:00', '2024-12-31', 3);
INSERT INTO `stage_project` VALUES (1, 2, '2024-03-01 00:00:00', '2024-04-02', 3);
INSERT INTO `stage_project` VALUES (11, 2, '2025-02-01 00:00:00', '2025-03-15', 2);
INSERT INTO `stage_project` VALUES (17, 2, '2024-12-12 00:00:00', '2024-12-15', 1);
INSERT INTO `stage_project` VALUES (2, 3, '2022-03-01 00:00:00', '2022-04-01', 3);
INSERT INTO `stage_project` VALUES (2, 4, '2022-05-01 00:00:00', '2023-04-01', 2);
INSERT INTO `stage_project` VALUES (1, 5, '2024-12-01 00:00:00', '2024-12-31', 2);
INSERT INTO `stage_project` VALUES (2, 5, '2023-09-01 00:00:00', '2023-11-30', 1);
INSERT INTO `stage_project` VALUES (3, 6, '2024-05-01 00:00:00', '2024-06-01', 2);
INSERT INTO `stage_project` VALUES (3, 7, '2024-07-01 00:00:00', '2024-09-02', 1);
INSERT INTO `stage_project` VALUES (4, 8, '2024-04-01 00:00:00', '2024-05-15', 3);
INSERT INTO `stage_project` VALUES (4, 9, '2024-06-01 00:00:00', '2024-07-15', 2);
INSERT INTO `stage_project` VALUES (5, 10, '2022-06-01 00:00:00', '2022-07-15', 2);
INSERT INTO `stage_project` VALUES (15, 10, '2024-12-02 00:00:00', '2024-12-12', 2);
INSERT INTO `stage_project` VALUES (5, 11, '2022-08-01 00:00:00', '2022-09-30', 1);
INSERT INTO `stage_project` VALUES (6, 12, '2023-02-01 00:00:00', '2023-02-14', 2);
INSERT INTO `stage_project` VALUES (6, 13, '2023-12-01 00:00:00', '2024-01-30', 1);
INSERT INTO `stage_project` VALUES (7, 14, '2021-07-10 00:00:00', '2022-10-01', 2);
INSERT INTO `stage_project` VALUES (7, 15, '2022-10-15 00:00:00', '2022-10-30', 1);
INSERT INTO `stage_project` VALUES (8, 16, '2024-06-01 00:00:00', '2024-07-30', 2);
INSERT INTO `stage_project` VALUES (9, 17, '2023-10-05 00:00:00', '2024-02-10', 1);
INSERT INTO `stage_project` VALUES (10, 18, '2021-01-15 00:00:00', '2021-05-01', 2);

-- ----------------------------
-- Table structure for stage_services
-- ----------------------------
DROP TABLE IF EXISTS `stage_services`;
CREATE TABLE `stage_services`  (
  `project_id` int NOT NULL,
  `stage_id` int NOT NULL,
  `service_id` int NOT NULL,
  `hours_used` int NOT NULL DEFAULT 0,
  `service_cost` decimal(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`project_id`, `stage_id`, `service_id`) USING BTREE,
  INDEX `stage_id`(`stage_id` ASC) USING BTREE,
  INDEX `service_id`(`service_id` ASC) USING BTREE,
  INDEX `stage_services_ibfk_1`(`project_id` ASC) USING BTREE,
  CONSTRAINT `fk_stage_project1` FOREIGN KEY (`project_id`, `stage_id`) REFERENCES `stage_project` (`project_id`, `stage_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stage_services_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stage_services
-- ----------------------------
INSERT INTO `stage_services` VALUES (1, 1, 1, 20, 10000.00);
INSERT INTO `stage_services` VALUES (1, 2, 15, 6, 3900.00);
INSERT INTO `stage_services` VALUES (1, 5, 15, 30, 19500.00);
INSERT INTO `stage_services` VALUES (2, 3, 1, 15, 7500.00);
INSERT INTO `stage_services` VALUES (2, 4, 2, 13, 5850.00);
INSERT INTO `stage_services` VALUES (2, 5, 5, 14, 4900.00);
INSERT INTO `stage_services` VALUES (9, 17, 12, 24, 13200.00);
INSERT INTO `stage_services` VALUES (11, 1, 1, 9, 4500.00);
INSERT INTO `stage_services` VALUES (12, 1, 2, 21, 9450.00);

-- ----------------------------
-- Table structure for stage_services_audit
-- ----------------------------
DROP TABLE IF EXISTS `stage_services_audit`;
CREATE TABLE `stage_services_audit`  (
  `audit_id` int NOT NULL AUTO_INCREMENT,
  `action_type` enum('INSERT','UPDATE','DELETE') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `project_id` int NOT NULL,
  `stage_id` int NOT NULL,
  `service_cost` decimal(10, 2) NULL DEFAULT NULL,
  `modified_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `old_service_cost` decimal(10, 2) NULL DEFAULT NULL,
  `new_service_cost` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`audit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stage_services_audit
-- ----------------------------
INSERT INTO `stage_services_audit` VALUES (2, 'INSERT', 1, 2, 3250.00, '2024-12-02 23:24:36', 'root@localhost', NULL, 3250.00);
INSERT INTO `stage_services_audit` VALUES (3, 'INSERT', 2, 3, 6000.00, '2024-12-02 23:24:36', 'root@localhost', NULL, 6000.00);
INSERT INTO `stage_services_audit` VALUES (4, 'INSERT', 2, 4, 5850.00, '2024-12-02 23:24:36', 'root@localhost', NULL, 5850.00);
INSERT INTO `stage_services_audit` VALUES (5, 'INSERT', 2, 5, 4900.00, '2024-12-02 23:24:36', 'root@localhost', NULL, 4900.00);
INSERT INTO `stage_services_audit` VALUES (6, 'INSERT', 12, 1, 9450.00, '2024-12-11 00:09:00', 'architect_daniel@localhost', NULL, 9450.00);
INSERT INTO `stage_services_audit` VALUES (7, 'UPDATE', 2, 3, 7500.00, '2024-12-11 00:35:48', 'architect_daniel@localhost', 6000.00, 7500.00);
INSERT INTO `stage_services_audit` VALUES (8, 'INSERT', 11, 1, 4500.00, '2024-12-11 00:36:18', 'architect_daniel@localhost', NULL, 4500.00);
INSERT INTO `stage_services_audit` VALUES (9, 'UPDATE', 1, 2, 3900.00, '2024-12-11 01:44:25', 'architect_daniel@localhost', 3250.00, 3900.00);
INSERT INTO `stage_services_audit` VALUES (10, 'INSERT', 9, 17, 13200.00, '2024-12-11 01:45:07', 'architect_daniel@localhost', NULL, 13200.00);
INSERT INTO `stage_services_audit` VALUES (11, 'INSERT', 1, 5, 19500.00, '2024-12-11 16:26:53', 'architect_daniel@localhost', NULL, 19500.00);

-- ----------------------------
-- Table structure for stage_status
-- ----------------------------
DROP TABLE IF EXISTS `stage_status`;
CREATE TABLE `stage_status`  (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`status_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stage_status
-- ----------------------------
INSERT INTO `stage_status` VALUES (1, 'Not Started');
INSERT INTO `stage_status` VALUES (2, 'In Progress');
INSERT INTO `stage_status` VALUES (3, 'Completed');
INSERT INTO `stage_status` VALUES (4, 'Delayed');

-- ----------------------------
-- Table structure for stage_subcontractor
-- ----------------------------
DROP TABLE IF EXISTS `stage_subcontractor`;
CREATE TABLE `stage_subcontractor`  (
  `project_id` int NOT NULL,
  `stage_id` int NOT NULL,
  `subcontractor_id` int NOT NULL,
  `hours_used` int NOT NULL DEFAULT 0,
  `subcontractor_cost` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`subcontractor_id`, `project_id`, `stage_id`) USING BTREE,
  INDEX `project_id`(`project_id` ASC, `stage_id` ASC) USING BTREE,
  CONSTRAINT `stage_subcontractor_ibfk_1` FOREIGN KEY (`project_id`, `stage_id`) REFERENCES `stage_project` (`project_id`, `stage_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stage_subcontractor_ibfk_2` FOREIGN KEY (`subcontractor_id`) REFERENCES `subcontractor` (`subcontractor_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stage_subcontractor
-- ----------------------------
INSERT INTO `stage_subcontractor` VALUES (1, 1, 1, 8, 964.00);
INSERT INTO `stage_subcontractor` VALUES (2, 4, 1, 12, 1446.00);
INSERT INTO `stage_subcontractor` VALUES (4, 8, 1, 15, 1807.50);
INSERT INTO `stage_subcontractor` VALUES (2, 5, 2, 13, 1283.75);
INSERT INTO `stage_subcontractor` VALUES (11, 2, 3, 31, 2635.00);
INSERT INTO `stage_subcontractor` VALUES (12, 1, 4, 100, 10500.00);
INSERT INTO `stage_subcontractor` VALUES (2, 3, 11, 5, 1250.00);

-- ----------------------------
-- Table structure for stage_subcontractor_audit
-- ----------------------------
DROP TABLE IF EXISTS `stage_subcontractor_audit`;
CREATE TABLE `stage_subcontractor_audit`  (
  `audit_id` int NOT NULL AUTO_INCREMENT,
  `action_type` enum('INSERT','UPDATE','DELETE') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `project_id` int NOT NULL,
  `stage_id` int NOT NULL,
  `subcontractor_cost` decimal(10, 2) NULL DEFAULT NULL,
  `modified_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `old_subcontractor_cost` decimal(10, 2) NULL DEFAULT NULL,
  `new_subcontractor_cost` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`audit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stage_subcontractor_audit
-- ----------------------------
INSERT INTO `stage_subcontractor_audit` VALUES (4, 'INSERT', 2, 3, 1250.00, '2024-12-02 23:45:47', 'root@localhost', NULL, 1250.00);
INSERT INTO `stage_subcontractor_audit` VALUES (5, 'INSERT', 2, 4, 1446.00, '2024-12-02 23:45:47', 'root@localhost', NULL, 1446.00);
INSERT INTO `stage_subcontractor_audit` VALUES (6, 'INSERT', 2, 5, 1283.75, '2024-12-02 23:45:47', 'root@localhost', NULL, 1283.75);
INSERT INTO `stage_subcontractor_audit` VALUES (7, 'INSERT', 11, 2, 2890.00, '2024-12-11 01:26:32', 'architect_daniel@localhost', NULL, 2890.00);
INSERT INTO `stage_subcontractor_audit` VALUES (8, 'INSERT', 4, 8, 1807.50, '2024-12-11 03:08:21', 'architect_daniel@localhost', NULL, 1807.50);
INSERT INTO `stage_subcontractor_audit` VALUES (9, 'UPDATE', 11, 2, 2635.00, '2024-12-11 03:13:28', 'architect_daniel@localhost', 2890.00, 2635.00);
INSERT INTO `stage_subcontractor_audit` VALUES (10, 'INSERT', 12, 1, 10500.00, '2024-12-11 14:41:15', 'architect_daniel@localhost', NULL, 10500.00);

-- ----------------------------
-- Table structure for state
-- ----------------------------
DROP TABLE IF EXISTS `state`;
CREATE TABLE `state`  (
  `state_code` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `state_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `country_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`state_code`) USING BTREE,
  UNIQUE INDEX `state_name`(`state_name` ASC) USING BTREE,
  INDEX `country_code`(`country_code` ASC) USING BTREE,
  CONSTRAINT `state_ibfk_1` FOREIGN KEY (`country_code`) REFERENCES `country` (`country_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Contains state information, linked to their respective countries.' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of state
-- ----------------------------
INSERT INTO `state` VALUES ('CH', 'Chihuahua', 'MX');
INSERT INTO `state` VALUES ('JA', 'Jalisco', 'MX');
INSERT INTO `state` VALUES ('NL', 'Nuevo León', 'MX');
INSERT INTO `state` VALUES ('OC', 'Oaxaca', 'MX');
INSERT INTO `state` VALUES ('SO', 'Sonora', 'MX');

-- ----------------------------
-- Table structure for subcontractor
-- ----------------------------
DROP TABLE IF EXISTS `subcontractor`;
CREATE TABLE `subcontractor`  (
  `subcontractor_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `specialization_sub_id` int NOT NULL,
  `address_id` int NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hourly_rate` decimal(10, 2) NULL DEFAULT NULL COMMENT 'Rate charged by the subcontractor per hour or per service',
  PRIMARY KEY (`subcontractor_id`) USING BTREE,
  UNIQUE INDEX `company_name`(`company_name` ASC) USING BTREE,
  INDEX `specialization_sub_id`(`specialization_sub_id` ASC) USING BTREE,
  INDEX `subcontractor_ibfk_2`(`address_id` ASC) USING BTREE,
  CONSTRAINT `subcontractor_ibfk_1` FOREIGN KEY (`specialization_sub_id`) REFERENCES `specialization_subcon` (`specialization_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `subcontractor_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of subcontractor
-- ----------------------------
INSERT INTO `subcontractor` VALUES (1, 'ArcDesign Ltd.', 6, 1, 'Active', 120.50);
INSERT INTO `subcontractor` VALUES (2, 'BuildCo Enterprises', 3, 2, 'Active', 98.75);
INSERT INTO `subcontractor` VALUES (3, 'ElecPro Solutions', 7, 3, 'Inactive', 85.00);
INSERT INTO `subcontractor` VALUES (4, 'General Build Inc.', 1, 4, 'Active', 105.00);
INSERT INTO `subcontractor` VALUES (5, 'InteriorCraft LLC', 8, 5, 'Inactive', 90.00);
INSERT INTO `subcontractor` VALUES (6, 'MatSupply Partners', 5, 6, 'Active', 75.50);
INSERT INTO `subcontractor` VALUES (7, 'RenewEnergy Co.', 2, 7, 'Active', 110.25);
INSERT INTO `subcontractor` VALUES (8, 'SteelFormers Ltd.', 10, 8, 'Inactive', 95.75);
INSERT INTO `subcontractor` VALUES (9, 'StructEng Group', 4, 9, 'Active', 130.00);
INSERT INTO `subcontractor` VALUES (10, 'UrbanPlan Consultants', 9, 10, 'Active', 88.40);
INSERT INTO `subcontractor` VALUES (11, 'UWUsito', 1, 12, 'Active', 250.00);

-- ----------------------------
-- Table structure for subcontractor_phone
-- ----------------------------
DROP TABLE IF EXISTS `subcontractor_phone`;
CREATE TABLE `subcontractor_phone`  (
  `contact_id` int NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`contact_id`, `phone`) USING BTREE,
  CONSTRAINT `subcontractor_phone_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact_subcontractor` (`contact_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of subcontractor_phone
-- ----------------------------
INSERT INTO `subcontractor_phone` VALUES (1, '614-111-2233');
INSERT INTO `subcontractor_phone` VALUES (2, '614-222-3344');
INSERT INTO `subcontractor_phone` VALUES (3, '625-333-4455');
INSERT INTO `subcontractor_phone` VALUES (4, '614-444-5566');
INSERT INTO `subcontractor_phone` VALUES (5, '639-555-6677');
INSERT INTO `subcontractor_phone` VALUES (6, '614-666-7788');
INSERT INTO `subcontractor_phone` VALUES (7, '614-777-8899');
INSERT INTO `subcontractor_phone` VALUES (8, '627-888-9900');
INSERT INTO `subcontractor_phone` VALUES (9, '614-999-1122');
INSERT INTO `subcontractor_phone` VALUES (10, '614-123-4567');
INSERT INTO `subcontractor_phone` VALUES (12, '5551234567');
INSERT INTO `subcontractor_phone` VALUES (12, '5559876543');

-- ----------------------------
-- Procedure structure for AddStageProject
-- ----------------------------
DROP PROCEDURE IF EXISTS `AddStageProject`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddStageProject`(
    IN p_project_id INT,
    IN p_stage_id INT,
    IN p_start_date DATE,
    IN p_due_date DATE,
    IN p_status_id INT
)
BEGIN
    INSERT INTO stage_project (project_id, stage_id, start_date, due_date, status_id)
    VALUES (p_project_id, p_stage_id, p_start_date, p_due_date, p_status_id);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for CalculateProjectDuration
-- ----------------------------
DROP FUNCTION IF EXISTS `CalculateProjectDuration`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateProjectDuration`(p_project_id INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE duration INT;

    SELECT DATEDIFF(end_date, start_date) INTO duration
    FROM project
    WHERE project_id = p_project_id;

    RETURN duration;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for CreateDatabaseUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `CreateDatabaseUser`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateDatabaseUser`(IN role_name VARCHAR(50), IN employee_id INT)
BEGIN
    DECLARE user_name VARCHAR(100);
    DECLARE user_password VARCHAR(100);

    -- Construir el nombre del usuario
    SET user_name = CONCAT(role_name, '_', employee_id, '@localhost');
    SET user_password = employee_id;

    -- Crear el usuario
    SET @create_user_query = CONCAT("CREATE USER '", user_name, "' IDENTIFIED BY '", user_password, "'");
    PREPARE stmt FROM @create_user_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Asignar el rol correspondiente al usuario
    SET @grant_role_query = CONCAT("GRANT '", role_name, "' TO '", user_name, "'");
    PREPARE stmt FROM @grant_role_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Configurar el rol como predeterminado
    SET @default_role_query = CONCAT("SET DEFAULT ROLE '", role_name, "' TO '", user_name, "'");
    PREPARE stmt FROM @default_role_query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DeleteStageProject
-- ----------------------------
DROP PROCEDURE IF EXISTS `DeleteStageProject`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteStageProject`(
    IN p_project_id INT,
    IN p_stage_id INT
)
BEGIN
    DELETE FROM stage_project
    WHERE project_id = p_project_id AND stage_id = p_stage_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DeleteStageService
-- ----------------------------
DROP PROCEDURE IF EXISTS `DeleteStageService`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteStageService`(
    IN p_project_id INT, 
    IN p_stage_id INT, 
    IN p_service_id INT
)
BEGIN
    DELETE FROM stage_services
    WHERE project_id = p_project_id AND 
          stage_id = p_stage_id AND 
          service_id = p_service_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for DeleteStageSubcontractor
-- ----------------------------
DROP PROCEDURE IF EXISTS `DeleteStageSubcontractor`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteStageSubcontractor`(
    IN projectId INT,
    IN stageId INT,
    IN subcontractorId INT
)
BEGIN
    DELETE FROM stage_subcontractor
    WHERE project_id = projectId AND stage_id = stageId AND subcontractor_id = subcontractorId;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Delete_Employee
-- ----------------------------
DROP PROCEDURE IF EXISTS `Delete_Employee`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete_Employee`(
    IN emp_id INT
)
BEGIN
    START TRANSACTION;

    -- Validar existencia del empleado
    IF NOT EXISTS (SELECT 1 FROM employee WHERE employee_id = emp_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El empleado no existe.';
    END IF;

    -- Eliminar números de teléfono
    DELETE FROM employee_phone WHERE employee_id = emp_id;

    -- Eliminar posición
    DELETE FROM employee_position WHERE employee_id = emp_id;

    -- Eliminar dirección
    DELETE FROM address WHERE address_id = (SELECT address_id FROM employee WHERE employee_id = emp_id);

    -- Eliminar empleado
    DELETE FROM employee WHERE employee_id = emp_id;

    COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for GenerateEmployeePayroll
-- ----------------------------
DROP PROCEDURE IF EXISTS `GenerateEmployeePayroll`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenerateEmployeePayroll`(month DATE)
BEGIN
    SELECT 
        e.employee_id, 
        CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
        ep.monthly_salary AS salary,
        COUNT(es.project_id) AS projects_assigned
    FROM employee e
    JOIN employee_position ep ON e.employee_id = ep.employee_id
    LEFT JOIN employee_stage es ON e.employee_id = es.employee_id
    WHERE ep.hire_date <= LAST_DAY(month)
      AND (ep.exit_date IS NULL OR ep.exit_date > LAST_DAY(month))
    GROUP BY e.employee_id, ep.monthly_salary;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for GenerateIncomeReport
-- ----------------------------
DROP PROCEDURE IF EXISTS `GenerateIncomeReport`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenerateIncomeReport`()
BEGIN
    SELECT DATE_FORMAT(date_issued, '%Y-%m') AS month, SUM(total) AS total_income
    FROM invoice
    GROUP BY month
    ORDER BY month;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for Generate_city
-- ----------------------------
DROP FUNCTION IF EXISTS `Generate_city`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Generate_city`(p_city_name VARCHAR(50), p_state_code VARCHAR(4)) RETURNS int
    MODIFIES SQL DATA
BEGIN
    -- Valida si el estado existe
    IF NOT EXISTS (SELECT 1 FROM state WHERE state_code = p_state_code) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El estado no existe.';
    END IF;

    -- Inserta la nueva ciudad
    INSERT INTO city (city_name, state_code)
    VALUES (p_city_name, p_state_code);

    -- Retorna 1 para indicar que la operación fue exitosa
    RETURN 1;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for Generate_country
-- ----------------------------
DROP FUNCTION IF EXISTS `Generate_country`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Generate_country`(p_country_code VARCHAR(2), p_country_name VARCHAR(50)) RETURNS int
    MODIFIES SQL DATA
BEGIN
    -- Verifica si el país ya existe
    IF EXISTS (SELECT 1 FROM country WHERE country_code = p_country_code) THEN
        -- Si el país ya existe, lanza un mensaje de error explícito
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El código del país ya existe.';
    END IF;

    -- Inserta el nuevo país
    INSERT INTO country (country_code, country_name)
    VALUES (p_country_code, p_country_name);

    -- Retorna 1 para indicar que la operación fue exitosa
    RETURN 1;
  END
;;
delimiter ;

-- ----------------------------
-- Function structure for Generate_email
-- ----------------------------
DROP FUNCTION IF EXISTS `Generate_email`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Generate_email`(employee_id INT) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
  DECLARE email VARCHAR(255);
  DECLARE base_email VARCHAR(255);
  DECLARE email_count INT;
  
  -- Generar email base
  SELECT 
    CONCAT(
      LOWER(REGEXP_REPLACE(SUBSTRING(e.first_name, 1, 1), '[^a-z]', '')), 
      '.', 
      LOWER(REGEXP_REPLACE(
        CASE 
          WHEN LOCATE(' ', e.last_name) > 0 
          THEN SUBSTRING_INDEX(e.last_name, ' ', 1) 
          ELSE e.last_name 
        END, 
        '[^a-z]', ''
      )), 
      '@', 
      LOWER(REPLACE(REPLACE(d.department_name, ' ', ''), '-', '')), 
      '.com'
    )
  INTO base_email
  FROM employee e
  INNER JOIN employee_position ep ON e.employee_id = ep.employee_id
  INNER JOIN department d ON ep.department_id = d.department_id
  WHERE e.employee_id = employee_id; -- Comparación corregida
  
  -- Verificar si ya existe el email
  SELECT COUNT(*) INTO email_count
  FROM employee
  WHERE email LIKE CONCAT(SUBSTRING_INDEX(base_email, '@', 1), '%');
  
  -- Si ya existe, añadir un número
  IF email_count > 0 THEN
    SET email = CONCAT(
      SUBSTRING_INDEX(base_email, '@', 1), 
      LPAD(email_count + 1, 2, '0'), 
      '@', 
      SUBSTRING_INDEX(base_email, '@', -1)
    );
  ELSE
    SET email = base_email;
  END IF;
  
  RETURN email;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for Generate_RFC
-- ----------------------------
DROP FUNCTION IF EXISTS `Generate_RFC`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Generate_RFC`(
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE
) RETURNS varchar(13) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE rfc VARCHAR(13);

    -- Generar el RFC usando las reglas proporcionadas
    SET rfc = UPPER(CONCAT(
        SUBSTRING(last_name, 1, 2),      -- Primeras dos letras del apellido
        SUBSTRING(first_name, 1, 1),    -- Primera letra del nombre
        YEAR(birth_date),               -- Año de nacimiento
        LPAD(MONTH(birth_date), 2, '0'), -- Mes (2 dígitos)
        LPAD(DAY(birth_date), 2, '0')   -- Día (2 dígitos)
    ));

    RETURN rfc;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for Generate_state
-- ----------------------------
DROP FUNCTION IF EXISTS `Generate_state`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Generate_state`(p_state_code VARCHAR(4), p_state_name VARCHAR(50), p_country_code VARCHAR(2)) RETURNS int
    MODIFIES SQL DATA
BEGIN
    -- Valida si el país existe
    IF NOT EXISTS (SELECT 1 FROM country WHERE country_code = p_country_code) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El país no existe.';
    END IF;

    -- Inserta el nuevo estado
    INSERT INTO state (state_code, state_name, country_code)
    VALUES (p_state_code, p_state_name, p_country_code);

    -- Retorna 1 para indicar que la operación fue exitosa
    RETURN 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for GetClientData
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetClientData`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetClientData`(IN p_client_id INT)
BEGIN
 -- Recuperar datos del cliente
    SELECT c.client_id, c.first_name, c.last_name, c.company_name, c.rfc, c.email, cp.phone_number, c.gender, c.birth_date,
           a.street, a.exterior_number, a.interior_number, a.neighborhood, 
           a.postal_code, ci.city_id, ci.city_name
    FROM client c
    LEFT JOIN address a ON c.address_id = a.address_id
    LEFT JOIN city ci ON a.city_id = ci.city_id
    LEFT JOIN client_phone cp ON c.client_id = cp.client_id 
    WHERE c.client_id = p_client_id;

    -- Recuperar números de teléfono asociados
    SELECT phone_number
    FROM client_phone
    WHERE client_id = p_client_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for GetClientInvoice
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetClientInvoice`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetClientInvoice`(IN p_client_id INT)
BEGIN

    DECLARE invoice_count INT;

    SELECT COUNT(*) INTO invoice_count
    FROM invoice
    WHERE client_id = p_client_id;

    IF invoice_count = 0 THEN
        SELECT 'No hay facturas asociadas a este cliente.' AS mensaje;
    ELSE
        -- Si hay facturas, mostramos los detalles
        SELECT i.invoice_id, c.first_name, c.last_name, c.rfc, a.postal_code, p.project_name, s.stage_name, i.date_issued, i.subtotal, i.total, i.cfdi_code
        FROM client c
        JOIN address a ON c.address_id = a.address_id
        JOIN invoice i ON c.client_id = i.client_id
        JOIN stage s ON i.stage_id = s.stage_id
        JOIN project p ON i.project_id = p.project_id
        WHERE c.client_id = p_client_id;
    END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for GetEmployeeData
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetEmployeeData`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmployeeData`(IN emp_id INT)
BEGIN
    -- Obtener los datos básicos del empleado, dirección y detalles del trabajo
    SELECT 
        e.employee_id,
        e.first_name,
        e.last_name,
        e.birth_date,
        e.rfc,
        e.gender,
        e.email,
        ep.monthly_salary,
        ep.hire_date,
        a.street AS street,
        a.exterior_number AS exterior_number,
        a.interior_number AS interior_number,
        a.neighborhood AS neighborhood,
        a.postal_code AS postal_code,
        a.city_id AS city_id,
        d.department_name AS department_name,
        bu.BU_name AS business_unit_name,
        jp.JP_name AS job_position_name,
        sp.specialization_name AS specialization_name
    FROM 
        employee e
    INNER JOIN 
        address a 
    ON 
        e.address_id = a.address_id
    INNER JOIN 
        employee_position ep
    ON 
        e.employee_id = ep.employee_id
    INNER JOIN 
        department d 
    ON 
        ep.department_id = d.department_id
    INNER JOIN 
        business_unit bu 
    ON 
        ep.bu_id = bu.bu_id
    INNER JOIN 
        job_position jp 
    ON 
        ep.jp_id = jp.jp_id
    INNER JOIN 
        specialization sp 
    ON 
        ep.sp_id = sp.sp_id
    WHERE 
        e.employee_id = emp_id;

    -- Obtener los números telefónicos asociados al empleado
    SELECT 
        phone_number
    FROM 
        employee_phone
    WHERE 
        employee_id = emp_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for GetInvoiceDetails
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetInvoiceDetails`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInvoiceDetails`(IN p_invoice_id INT)
BEGIN
    SELECT *
    FROM invoice_details
    WHERE invoice_id = p_invoice_id;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for GetProjectCompletion
-- ----------------------------
DROP FUNCTION IF EXISTS `GetProjectCompletion`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetProjectCompletion`(p_project_id INT) RETURNS decimal(5,2)
    READS SQL DATA
BEGIN
    DECLARE total_stages INT;
    DECLARE completed_stages INT;

    -- Obtiene el total de etapas del proyecto
    SELECT COUNT(*) INTO total_stages
    FROM stage_project
    WHERE project_id = p_project_id;

    -- Obtiene las etapas completadas
    SELECT COUNT(*) INTO completed_stages
    FROM stage_project
    WHERE project_id = p_project_id AND status_id = 3; -- Estado "completed"

    -- Calcula el porcentaje completado
    IF total_stages = 0 THEN
        RETURN 0; -- Evita división por cero si no hay etapas
    ELSE
        RETURN (completed_stages / total_stages) * 100;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for GetProjectData
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetProjectData`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProjectData`(
    IN p_project_id INT
)
BEGIN
    -- Primer conjunto de resultados: datos del proyecto, cliente y dirección
    SELECT 
        p.project_id,
        p.project_name,
        p.description,
        c.client_id,
        CONCAT(c.first_name, ' ', c.last_name) AS client_name,
        p.start_date,
        p.end_date,
        ps.status_name,
        a.street,
        a.exterior_number,
        a.interior_number,
        a.neighborhood,
        a.postal_code,
        a.city_id
    FROM 
        project p
    LEFT JOIN 
        project_status ps ON p.status_id = ps.status_id
    LEFT JOIN 
        client c ON p.client_id = c.client_id
    LEFT JOIN 
        address a ON p.address_id = a.address_id
    WHERE 
        p.project_id = p_project_id;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for GetStageServices
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetStageServices`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStageServices`()
BEGIN
    SELECT ss.project_id, 
           p.project_name, 
           s.stage_name, 
           ser.service_name, 
           ss.hours_used, 
           ss.service_cost
    FROM stage_services ss
    JOIN project p ON ss.project_id = p.project_id
    JOIN stage s ON ss.stage_id = s.stage_id
    JOIN services ser ON ss.service_id = ser.service_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for GetStageSubcontractor
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetStageSubcontractor`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStageSubcontractor`()
BEGIN
    SELECT 
        ss.project_id,
        p.project_name,
        s.stage_name,
        sc.company_name,
        ss.hours_used,
        ss.subcontractor_cost
    FROM stage_subcontractor ss
    JOIN project p ON ss.project_id = p.project_id
    JOIN stage s ON ss.stage_id = s.stage_id
    JOIN subcontractor sc ON ss.subcontractor_id = sc.subcontractor_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertStageService
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertStageService`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertStageService`(
    IN p_project_id INT, 
    IN p_stage_id INT, 
    IN p_service_id INT, 
    IN p_hours_used INT, 
    IN p_service_cost DECIMAL(10, 2)
)
BEGIN
    INSERT INTO stage_services (project_id, stage_id, service_id, hours_used, service_cost)
    VALUES (p_project_id, p_stage_id, p_service_id, p_hours_used, p_service_cost);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertStageSubcontractor
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertStageSubcontractor`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertStageSubcontractor`(
    IN projectId INT,
    IN stageId INT,
    IN subcontractorId INT,
    IN hoursUsed INT,
    IN subcontractorCost DECIMAL(10,2)
)
BEGIN
    INSERT INTO stage_subcontractor (project_id, stage_id, subcontractor_id, hours_used, subcontractor_cost)
    VALUES (projectId, stageId, subcontractorId, hoursUsed, subcontractorCost);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_Address
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Address`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Address`(
    IN p_street_name VARCHAR(100),
    IN p_exterior_num VARCHAR(10),
    IN p_interior_num VARCHAR(10),
    IN p_neighborhood_name VARCHAR(50),
    IN p_postal_code VARCHAR(5),
    IN p_city_id INT
)
BEGIN
    DECLARE v_error_message VARCHAR(255);

    -- Verificar si el p_city_id existe en la tabla city
    IF NOT EXISTS (SELECT 1 FROM city WHERE city_id = p_city_id) THEN
        SET v_error_message = CONCAT('El city_id "', p_city_id, '" no existe en la tabla city.');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_message;
    ELSE
        -- Insertar la nueva dirección
        INSERT INTO address (street, exterior_number, interior_number, neighborhood, postal_code, city_id)
        VALUES (p_street_name, p_exterior_num, p_interior_num, p_neighborhood_name, p_postal_code, p_city_id);
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_Client
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Client`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Client`(
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    IN p_company_name VARCHAR(50),
    IN p_email VARCHAR(100),
    IN p_gender ENUM('F', 'M'),
    IN p_birth_date DATE,
    IN p_phone VARCHAR(255),  
    IN p_street_name VARCHAR(100),
    IN p_exterior_num VARCHAR(10),
    IN p_interior_num VARCHAR(10),
    IN p_neighborhood_name VARCHAR(50),
    IN p_postal_code VARCHAR(5),
    IN p_city_id INT         
)
BEGIN
    DECLARE v_error_message VARCHAR(255);
    DECLARE v_client_id INT;
    DECLARE v_phone VARCHAR(15);  -- Variable para almacenar cada teléfono extraído
    DECLARE v_rfc_generated VARCHAR(13); -- RFC generado automáticamente
    DECLARE v_address_id INT;

    -- Generar RFC
    SET v_rfc_generated = Generate_RFC(p_first_name, p_last_name, p_birth_date);

    -- Verificar si la dirección está completa
    IF p_street_name IS NOT NULL AND p_exterior_num IS NOT NULL AND p_neighborhood_name IS NOT NULL 
       AND p_postal_code IS NOT NULL AND p_city_id IS NOT NULL THEN

        -- Verificar si p_city_id existe en la tabla city
        IF NOT EXISTS (SELECT 1 FROM city WHERE city_id = p_city_id) THEN
            SET v_error_message = CONCAT('El city_id "', p_city_id, '" no existe en la tabla city.');
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_message;
        ELSE
            -- Insertar la nueva dirección
            INSERT INTO address (street, exterior_number, interior_number, neighborhood, postal_code, city_id)
            VALUES (p_street_name, p_exterior_num, p_interior_num, p_neighborhood_name, p_postal_code, p_city_id);

            -- Obtener el ID de la dirección recién insertada
            SET v_address_id = LAST_INSERT_ID();
        END IF;
    ELSE
        -- Si no se proporcionó información de dirección, usar NULL para address_id
        SET v_address_id = NULL;
    END IF;

    -- Insertar el cliente
    INSERT INTO client (first_name, last_name, company_name, rfc, email, gender, birth_date, address_id)
    VALUES (p_first_name, p_last_name, p_company_name, v_rfc_generated, p_email, p_gender, p_birth_date, v_address_id);

    -- Obtener el ID del cliente recién insertado
    SET v_client_id = LAST_INSERT_ID();

    -- Procesar los números de teléfono
    WHILE LENGTH(p_phone) > 0 DO
        -- Extraer el primer número de la lista
        SET v_phone = TRIM(SUBSTRING_INDEX(p_phone, ',', 1));

        -- Eliminar el número procesado de la lista
        SET p_phone = IF(LOCATE(',', p_phone) > 0,
            SUBSTRING(p_phone, LOCATE(',', p_phone) + 1),
            '');  -- Si no hay más comas, se vacía la lista

        -- Insertar el número de teléfono en la tabla client_phone
        INSERT INTO client_phone (client_id, phone_number)
        VALUES (v_client_id, v_phone);
    END WHILE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_Estimated_Cost
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Estimated_Cost`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Estimated_Cost`(
    IN p_project_id INT,          
    IN p_service_id INT,          
    IN p_estimated_hours INT
)
BEGIN
    DECLARE v_error_message VARCHAR(255);

    -- Verificar si el proyecto existe
    IF NOT EXISTS (SELECT 1 FROM project WHERE project_id = p_project_id) THEN
        SET v_error_message = CONCAT('El proyecto con project_id "', p_project_id, '" no existe.');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_message;

    -- Verificar si el servicio existe
    ELSEIF NOT EXISTS (SELECT 1 FROM services WHERE service_id = p_service_id) THEN
        SET v_error_message = CONCAT('El servicio con service_id "', p_service_id, '" no existe.');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_message;

    ELSE
        -- Insertar el costo estimado
        INSERT INTO estimated_cost (project_id, service_id, estimated_hours)
        VALUES (p_project_id, p_service_id, p_estimated_hours);
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_Project
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Project`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Project`(
    IN p_project_name VARCHAR(100),
    IN p_description VARCHAR(255),
    IN p_client_id INT,
    IN p_start_date DATE,
    IN p_end_date DATE,
    IN p_status_id INT,
    IN p_street_name VARCHAR(100),
    IN p_exterior_num VARCHAR(10),
    IN p_interior_num VARCHAR(10),
    IN p_neighborhood_name VARCHAR(50),
    IN p_postal_code VARCHAR(5),
    IN p_city_id INT
)
BEGIN
    DECLARE v_address_id INT;

    -- Verificar si los campos de dirección están completos
    IF p_street_name IS NOT NULL AND p_exterior_num IS NOT NULL AND p_neighborhood_name IS NOT NULL AND 
       p_postal_code IS NOT NULL AND p_city_id IS NOT NULL THEN
        -- Insertar la dirección
        INSERT INTO address (street, exterior_number, interior_number, neighborhood, postal_code, city_id)
        VALUES (p_street_name, p_exterior_num, p_interior_num, p_neighborhood_name, p_postal_code, p_city_id);

        -- Obtener el ID de la dirección recién insertada
        SET v_address_id = LAST_INSERT_ID();
    ELSE
        -- Si no hay dirección, establecer address_id como NULL
        SET v_address_id = NULL;
    END IF;

    -- Insertar el proyecto
    INSERT INTO project (project_name, description, client_id, start_date, end_date, status_id, address_id)
    VALUES (p_project_name, p_description, p_client_id, p_start_date, p_end_date, p_status_id, v_address_id);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_Subcontractor_Contact
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Subcontractor_Contact`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Subcontractor_Contact`(
    IN spec_id INT,                 -- ID de la especialización
    IN sub_name VARCHAR(100),       -- Nombre de la empresa
    IN addr_id INT,                 -- ID de la dirección
    IN sub_status ENUM('Active', 'Inactive'), -- Estado del subcontratista
    IN rate_per_hour DECIMAL(10,2), -- Tarifa por hora
    IN contact_fullname VARCHAR(50), -- Nombre completo del contacto
    IN contact_mail VARCHAR(100),   -- Correo del contacto
    IN contact_phones TEXT          -- Lista de números de teléfono separados por comas
)
BEGIN
    DECLARE new_contact_id INT;        -- ID del contacto
    DECLARE single_phone VARCHAR(15); -- Teléfono procesado
    DECLARE error_message VARCHAR(255); -- Mensaje de error personalizado

    -- Validar que la especialización exista
    IF NOT EXISTS (
        SELECT 1
        FROM specialization_subcon
        WHERE specialization_id = spec_id
    ) THEN
        SET error_message = CONCAT('La especialización con ID "', spec_id, '" no existe.');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = error_message;
    END IF;

    -- Validar que el subcontratista no exista
    IF EXISTS (
        SELECT 1
        FROM subcontractor
        WHERE company_name = sub_name
    ) THEN
        SET error_message = CONCAT('El subcontratista "', sub_name, '" ya existe.');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = error_message;
    END IF;

    -- Insertar el subcontratista
    INSERT INTO subcontractor (company_name, specialization_sub_id, address_id, status, hourly_rate)
    VALUES (sub_name, spec_id, addr_id, sub_status, rate_per_hour);

    -- Obtener el ID del subcontratista recién insertado
    SET @new_subcontractor_id = LAST_INSERT_ID();

    -- Insertar el contacto
    INSERT INTO contact_subcontractor (subcontractor_id, contact_name, email)
    VALUES (@new_subcontractor_id, contact_fullname, contact_mail);

    -- Obtener el ID del contacto recién insertado
    SET new_contact_id = LAST_INSERT_ID();

    -- Procesar los números de teléfono
    WHILE LENGTH(contact_phones) > 0 DO
        -- Extraer el primer número de la lista
        SET single_phone = TRIM(SUBSTRING_INDEX(contact_phones, ',', 1));

        -- Eliminar el número procesado de la lista
        SET contact_phones = IF(LOCATE(',', contact_phones) > 0,
            SUBSTRING(contact_phones, LOCATE(',', contact_phones) + 1),
            '');

        -- Insertar el número de teléfono
        INSERT INTO subcontractor_phone (contact_id, phone)
        VALUES (new_contact_id, single_phone);
    END WHILE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for LogStageServicesChange
-- ----------------------------
DROP PROCEDURE IF EXISTS `LogStageServicesChange`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LogStageServicesChange`(
    IN p_action_type ENUM('INSERT', 'UPDATE', 'DELETE'),
    IN p_project_id INT,
    IN p_stage_id INT,
    IN p_service_cost DECIMAL(10, 2),
    IN p_old_service_cost DECIMAL(10, 2),
    IN p_new_service_cost DECIMAL(10, 2),
    IN p_modified_by VARCHAR(50)
)
BEGIN
    INSERT INTO stage_services_audit (
        action_type, 
        project_id, 
        stage_id, 
        service_cost, 
        modified_at, 
        modified_by, 
        old_service_cost, 
        new_service_cost
    )
    VALUES (
        p_action_type, 
        p_project_id, 
        p_stage_id, 
        p_service_cost, 
        NOW(), 
        p_modified_by, 
        p_old_service_cost, 
        p_new_service_cost
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for LogStageSubcontractorChange
-- ----------------------------
DROP PROCEDURE IF EXISTS `LogStageSubcontractorChange`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LogStageSubcontractorChange`(
    IN p_action_type ENUM('INSERT', 'UPDATE', 'DELETE'),
    IN p_project_id INT,
    IN p_stage_id INT,
    IN p_subcontractor_cost DECIMAL(10, 2),
    IN p_old_subcontractor_cost DECIMAL(10, 2),
    IN p_new_subcontractor_cost DECIMAL(10, 2),
    IN p_modified_by VARCHAR(50)
)
BEGIN
    INSERT INTO stage_subcontractor_audit (
        action_type, 
        project_id, 
        stage_id, 
        subcontractor_cost, 
        modified_at, 
        modified_by, 
        old_subcontractor_cost, 
        new_subcontractor_cost
    )
    VALUES (
        p_action_type, 
        p_project_id, 
        p_stage_id, 
        p_subcontractor_cost, 
        NOW(), 
        p_modified_by, 
        p_old_subcontractor_cost, 
        p_new_subcontractor_cost
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for NotifyLateStages
-- ----------------------------
DROP PROCEDURE IF EXISTS `NotifyLateStages`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NotifyLateStages`()
BEGIN
    DECLARE stage_id INT;
    DECLARE project_id INT;
    DECLARE employee_id INT;
    DECLARE stage_name VARCHAR(255);
    DECLARE done INT DEFAULT 0;

    -- Cursor que selecciona etapas atrasadas desde stage_project
    DECLARE late_stages_cursor CURSOR FOR
        SELECT es.employee_id, sp.project_id, sp.stage_id, sp.due_date
        FROM employee_stage es
        JOIN stage_project sp ON es.project_id = sp.project_id AND es.stage_id = sp.stage_id
        WHERE sp.due_date < CURDATE() AND sp.status_id <> 3; -- 3 representa "COMPLETED"

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Abrir el cursor
    OPEN late_stages_cursor;

    stage_loop: LOOP
        FETCH late_stages_cursor INTO employee_id, project_id, stage_id, stage_name;
        IF done THEN
            LEAVE stage_loop;
        END IF;

        -- Insertar notificación
        INSERT INTO notifications (employee_id, message, created_at)
        VALUES (
            employee_id,
            CONCAT('La etapa "', stage_name, '" del proyecto ', project_id, ' está atrasada.'),
            NOW()
        );
    END LOOP;

    -- Cerrar el cursor
    CLOSE late_stages_cursor;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Register_New_Employee
-- ----------------------------
DROP PROCEDURE IF EXISTS `Register_New_Employee`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Register_New_Employee`(
    IN emp_first_name VARCHAR(50),
    IN emp_last_name VARCHAR(50),
    IN emp_birth_date DATE,
    IN emp_gender ENUM('M', 'F'),
    IN emp_department_id INT,
    IN emp_BU_id INT,
    IN emp_job_position_id INT,
    IN emp_specialization_id INT,
    IN emp_hire_date DATE,
    IN phone_numbers TEXT,
    IN emp_monthly_salary DECIMAL(10,2),
    IN emp_street_name VARCHAR(100), 
    IN emp_exterior_num VARCHAR(10), 
    IN emp_interior_num VARCHAR(10), 
    IN emp_neighborhood_name VARCHAR(50), 
    IN emp_postal_code VARCHAR(5), 
    IN emp_city_id INT
)
BEGIN
    START TRANSACTION;

    -- Insertar dirección
    INSERT INTO address (street, exterior_number, interior_number, neighborhood, postal_code, city_id)
    VALUES (emp_street_name, emp_exterior_num, emp_interior_num, emp_neighborhood_name, emp_postal_code, emp_city_id);
    SET @addr_id = LAST_INSERT_ID();

    -- Insertar empleado
    INSERT INTO employee (first_name, last_name, birth_date, rfc, gender, address_id)
    VALUES (emp_first_name, emp_last_name, emp_birth_date, Generate_RFC(emp_first_name, emp_last_name, emp_birth_date), emp_gender, @addr_id);
    SET @emp_id = LAST_INSERT_ID();

    -- Insertar posición
    INSERT INTO employee_position (employee_id, department_id, BU_id, JP_id, SP_id, hire_date, monthly_salary)
    VALUES (@emp_id, emp_department_id, emp_BU_id, emp_job_position_id, emp_specialization_id, emp_hire_date, emp_monthly_salary);

    -- Insertar teléfonos
    WHILE LOCATE(',', phone_numbers) > 0 DO
        INSERT INTO employee_phone (employee_id, phone_number)
        VALUES (@emp_id, TRIM(SUBSTRING_INDEX(phone_numbers, ',', 1)));
        SET phone_numbers = SUBSTRING(phone_numbers FROM LOCATE(',', phone_numbers) + 1);
    END WHILE;
    INSERT INTO employee_phone (employee_id, phone_number)
    VALUES (@emp_id, phone_numbers);

    COMMIT;
    
        SET @generated_email = Generate_email(@emp_id);
    UPDATE employee SET email = @generated_email WHERE employee_id = @emp_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateBudget
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateBudget`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBudget`(IN p_project_id INT, IN p_stage_id INT)
BEGIN
    DECLARE p_total_service_cost DECIMAL(10,2);
    DECLARE p_total_subcontractor_cost DECIMAL(10,2);

    -- Calcula los costos de servicios
    SELECT COALESCE(SUM(service_cost), 0) INTO p_total_service_cost
    FROM stage_services
    WHERE project_id = p_project_id AND stage_id = p_stage_id;

    -- Calcula los costos de subcontratistas
    SELECT COALESCE(SUM(subcontractor_cost), 0) INTO p_total_subcontractor_cost
    FROM stage_subcontractor
    WHERE project_id = p_project_id AND stage_id = p_stage_id;

    -- Actualiza el presupuesto en la tabla budget
    UPDATE budget 
    SET total_service_cost = p_total_service_cost,
        total_subcontractor_cost = p_total_subcontractor_cost,
        total_amount = p_total_service_cost + p_total_subcontractor_cost
    WHERE project_id = p_project_id AND stage_id = p_stage_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateClientPhone
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateClientPhone`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateClientPhone`(
    IN p_client_id INT,
    IN p_old_phone VARCHAR(20),
    IN p_new_phone VARCHAR(20)
)
BEGIN
    -- Eliminar el número antiguo si es diferente del nuevo
    IF p_old_phone != p_new_phone THEN
        DELETE FROM client_phone
        WHERE client_id = p_client_id AND phone_number = p_old_phone;
    END IF;

    -- Insertar el nuevo número solo si no existe
    IF NOT EXISTS (
        SELECT 1 FROM client_phone
        WHERE client_id = p_client_id AND phone_number = p_new_phone
    ) THEN
        INSERT INTO client_phone (client_id, phone_number)
        VALUES (p_client_id, p_new_phone);
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateStageProject
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateStageProject`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateStageProject`(
    IN p_project_id INT,
    IN p_stage_id INT,
    IN p_start_date DATE,
    IN p_due_date DATE,
    IN p_status_id INT
)
BEGIN
    UPDATE stage_project
    SET start_date = p_start_date, due_date = p_due_date, status_id = p_status_id
    WHERE project_id = p_project_id AND stage_id = p_stage_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateStageService
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateStageService`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateStageService`(
    IN p_project_id INT, 
    IN p_stage_id INT, 
    IN p_service_id INT, 
    IN p_hours_used INT, 
    IN p_service_cost DECIMAL(10, 2)
)
BEGIN
    UPDATE stage_services
    SET hours_used = p_hours_used, 
        service_cost = p_service_cost
    WHERE project_id = p_project_id AND 
          stage_id = p_stage_id AND 
          service_id = p_service_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateStageStatus
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateStageStatus`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateStageStatus`(p_project_id INT, p_stage_id INT, p_new_status INT)
BEGIN
    UPDATE stage_project
    SET status_id = p_new_status
    WHERE project_id = p_project_id AND stage_id = p_stage_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for UpdateStageSubcontractor
-- ----------------------------
DROP PROCEDURE IF EXISTS `UpdateStageSubcontractor`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateStageSubcontractor`(
    IN projectId INT,
    IN stageId INT,
    IN subcontractorId INT,
    IN hoursUsed INT,
    IN subcontractorCost DECIMAL(10,2)
)
BEGIN
    UPDATE stage_subcontractor
    SET hours_used = hoursUsed,
        subcontractor_cost = subcontractorCost
    WHERE project_id = projectId AND stage_id = stageId AND subcontractor_id = subcontractorId;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Update_Employee
-- ----------------------------
DROP PROCEDURE IF EXISTS `Update_Employee`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Employee`(
    IN emp_id INT,
    IN emp_first_name VARCHAR(50),
    IN emp_last_name VARCHAR(50),
    IN emp_birth_date DATE,
    IN emp_gender ENUM('M', 'F'),
    IN emp_department_id INT,
    IN emp_BU_id INT,
    IN emp_job_position_id INT,
    IN emp_specialization_id INT,
    IN emp_hire_date DATE,
    IN emp_monthly_salary DECIMAL(10,2),
    IN emp_street_name VARCHAR(100), 
    IN emp_exterior_num VARCHAR(10), 
    IN emp_interior_num VARCHAR(10), 
    IN emp_neighborhood_name VARCHAR(50), 
    IN emp_postal_code VARCHAR(5), 
    IN emp_city_id INT
)
BEGIN
    START TRANSACTION;

    -- Validar la existencia de datos relacionados
    IF NOT EXISTS (SELECT 1 FROM employee WHERE employee_id = emp_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El empleado no existe.';
    END IF;

    -- Actualizar la dirección
    UPDATE address 
    SET street = emp_street_name,
        exterior_number = emp_exterior_num,
        interior_number = emp_interior_num,
        neighborhood = emp_neighborhood_name,
        postal_code = emp_postal_code,
        city_id = emp_city_id
    WHERE address_id = (SELECT address_id FROM employee WHERE employee_id = emp_id);

    -- Actualizar empleado
    UPDATE employee 
    SET first_name = emp_first_name,
        last_name = emp_last_name,
        birth_date = emp_birth_date,
        gender = emp_gender
    WHERE employee_id = emp_id;

    -- Actualizar posición
    UPDATE employee_position
    SET department_id = emp_department_id,
        BU_id = emp_BU_id,
        JP_id = emp_job_position_id,
        SP_id = emp_specialization_id,
        hire_date = emp_hire_date,
        monthly_salary = emp_monthly_salary
    WHERE employee_id = emp_id;

    COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Update_Estimated_Cost
-- ----------------------------
DROP PROCEDURE IF EXISTS `Update_Estimated_Cost`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Estimated_Cost`(
    IN p_estimation_id INT,        -- ID de la estimación
    IN p_project_id INT,           -- ID del proyecto
    IN p_service_id INT,           -- ID del servicio
    IN p_estimated_hours INT      -- Horas estimadas
)
BEGIN
    DECLARE v_error_message VARCHAR(255);

    -- Verificar si la estimación existe
    IF NOT EXISTS (SELECT 1 FROM estimated_cost WHERE estimation_id = p_estimation_id) THEN
        SET v_error_message = CONCAT('La estimación con estimation_id "', p_estimation_id, '" no existe.');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_message;

    -- Verificar si el proyecto existe
    ELSEIF NOT EXISTS (SELECT 1 FROM project WHERE project_id = p_project_id) THEN
        SET v_error_message = CONCAT('El proyecto con project_id "', p_project_id, '" no existe.');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_message;

    -- Verificar si el servicio existe
    ELSEIF NOT EXISTS (SELECT 1 FROM services WHERE service_id = p_service_id) THEN
        SET v_error_message = CONCAT('El servicio con service_id "', p_service_id, '" no existe.');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_error_message;

    ELSE
        -- Actualizar el costo estimado
        UPDATE estimated_cost
        SET project_id = p_project_id,
            service_id = p_service_id,
            estimated_hours = p_estimated_hours
        WHERE estimation_id = p_estimation_id;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table budget
-- ----------------------------
DROP TRIGGER IF EXISTS `ValidateBudget_BeforeInsert`;
delimiter ;;
CREATE TRIGGER `ValidateBudget_BeforeInsert` BEFORE INSERT ON `budget` FOR EACH ROW BEGIN
DECLARE valid INT; 

    -- Verifica si la combinación project_id + stage_id existe en stage_project
    SELECT COUNT(*) INTO valid
    FROM stage_project
    WHERE project_id = NEW.project_id
      AND stage_id = NEW.stage_id;

    -- Si no existe, genera un error
    IF valid = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No se puede crear un presupuesto para un proyecto sin etapas asociadas.';
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table budget
-- ----------------------------
DROP TRIGGER IF EXISTS `CalculateBudgetCosts_BeforeInsert`;
delimiter ;;
CREATE TRIGGER `CalculateBudgetCosts_BeforeInsert` BEFORE INSERT ON `budget` FOR EACH ROW BEGIN
    DECLARE total_service_cost DECIMAL(10, 2);
    DECLARE total_subcontractor_cost DECIMAL(10, 2);

    -- Calcula la suma de los costos de servicios para la etapa y proyecto
    SELECT SUM(COALESCE(service_cost, 0)) INTO total_service_cost
    FROM stage_services
    WHERE project_id = NEW.project_id AND stage_id = NEW.stage_id;

    -- Calcula la suma de los costos de subcontratistas para la etapa y proyecto
    SELECT SUM(COALESCE(subcontractor_cost, 0)) INTO total_subcontractor_cost
    FROM stage_subcontractor
    WHERE project_id = NEW.project_id AND stage_id = NEW.stage_id;

    -- Asigna los valores calculados a los campos del nuevo registro
    SET NEW.total_service_cost = COALESCE(total_service_cost, 0);
    SET NEW.total_subcontractor_cost = COALESCE(total_subcontractor_cost, 0);
    SET NEW.total_amount = COALESCE(total_service_cost, 0) + COALESCE(total_subcontractor_cost, 0);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table budget
-- ----------------------------
DROP TRIGGER IF EXISTS `UpdateTotalProjectCost_AfterInsert`;
delimiter ;;
CREATE TRIGGER `UpdateTotalProjectCost_AfterInsert` AFTER INSERT ON `budget` FOR EACH ROW BEGIN
    DECLARE total_cost DECIMAL(10, 2);

    -- Calcula el costo total del proyecto
    SELECT SUM(total_amount) INTO total_cost
    FROM budget
    WHERE project_id = NEW.project_id;

    -- Actualiza el costo total en la tabla Projects
    UPDATE Project
    SET total_cost = total_cost
    WHERE project_id = NEW.project_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table budget
-- ----------------------------
DROP TRIGGER IF EXISTS `UpdateTotalAmount`;
delimiter ;;
CREATE TRIGGER `UpdateTotalAmount` BEFORE UPDATE ON `budget` FOR EACH ROW BEGIN
  SET NEW.total_amount = NEW.total_service_cost + NEW.total_subcontractor_cost;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table budget
-- ----------------------------
DROP TRIGGER IF EXISTS `UpdateTotalProjectCost_AfterUpdate`;
delimiter ;;
CREATE TRIGGER `UpdateTotalProjectCost_AfterUpdate` AFTER UPDATE ON `budget` FOR EACH ROW BEGIN
    DECLARE total_cost DECIMAL(10, 2);

    -- Calcula el costo total del proyecto
    SELECT SUM(total_amount) INTO total_cost
    FROM budget
    WHERE project_id = NEW.project_id;

    -- Actualiza el costo total en la tabla Projects
    UPDATE Project
    SET total_cost = total_cost
    WHERE project_id = NEW.project_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table budget
-- ----------------------------
DROP TRIGGER IF EXISTS `UpdateTotalProjectCost_AfterDelete`;
delimiter ;;
CREATE TRIGGER `UpdateTotalProjectCost_AfterDelete` AFTER DELETE ON `budget` FOR EACH ROW BEGIN
    DECLARE total_cost DECIMAL(10, 2);

    -- Calcula el costo total del proyecto
    SELECT SUM(total_amount) INTO total_cost
    FROM budget
    WHERE project_id = OLD.project_id;

    -- Actualiza el costo total en la tabla Projects
    UPDATE Project
    SET total_cost = total_cost
    WHERE project_id = OLD.project_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table employee_stage
-- ----------------------------
DROP TRIGGER IF EXISTS `AssignDate`;
delimiter ;;
CREATE TRIGGER `AssignDate` BEFORE INSERT ON `employee_stage` FOR EACH ROW BEGIN
    IF NEW.assigned_date IS NULL THEN
        SET NEW.assigned_date = CURDATE();
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table estimated_cost
-- ----------------------------
DROP TRIGGER IF EXISTS `CalculateEstimatedCost_BeforeInsert`;
delimiter ;;
CREATE TRIGGER `CalculateEstimatedCost_BeforeInsert` BEFORE INSERT ON `estimated_cost` FOR EACH ROW BEGIN
    DECLARE service_rate DECIMAL(10, 2);

    -- Obtiene el hourly_rate del servicio
    SELECT hourly_rate INTO service_rate
    FROM Services
    WHERE service_id = NEW.service_id;

    -- Calcula el costo estimado
    SET NEW.estimated_service_cost = NEW.estimated_hours * service_rate;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table estimated_cost
-- ----------------------------
DROP TRIGGER IF EXISTS `UpdateTotalEstimatedCost_AfterInsert`;
delimiter ;;
CREATE TRIGGER `UpdateTotalEstimatedCost_AfterInsert` AFTER INSERT ON `estimated_cost` FOR EACH ROW BEGIN
    DECLARE total_cost DECIMAL(10, 2);

    -- Calcula el costo total estimado del proyecto
    SELECT SUM(estimated_service_cost) INTO total_cost
    FROM Estimated_Cost
    WHERE project_id = NEW.project_id;

    -- Actualiza el costo total estimado en la tabla Projects
    UPDATE Project
    SET estimated_total_cost = total_cost
    WHERE project_id = NEW.project_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table estimated_cost
-- ----------------------------
DROP TRIGGER IF EXISTS `RecalculateEstimatedCost`;
delimiter ;;
CREATE TRIGGER `RecalculateEstimatedCost` BEFORE UPDATE ON `estimated_cost` FOR EACH ROW BEGIN
    DECLARE service_rate DECIMAL(10, 2);

    -- Obtiene el hourly_rate del servicio
    SELECT hourly_rate INTO service_rate
    FROM Services
    WHERE service_id = NEW.service_id;

    -- Calcula el nuevo costo estimado
    SET NEW.estimated_service_cost = NEW.estimated_hours * service_rate;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table estimated_cost
-- ----------------------------
DROP TRIGGER IF EXISTS `UpdateTotalEstimatedCost_AfterUpdate`;
delimiter ;;
CREATE TRIGGER `UpdateTotalEstimatedCost_AfterUpdate` AFTER UPDATE ON `estimated_cost` FOR EACH ROW BEGIN
    DECLARE total_cost DECIMAL(10, 2);

    -- Calcula el nuevo costo total estimado del proyecto
    SELECT SUM(estimated_service_cost) INTO total_cost
    FROM Estimated_Cost
    WHERE project_id = NEW.project_id;

    -- Actualiza el costo total estimado en la tabla Projects
    UPDATE Project
    SET estimated_total_cost = total_cost
    WHERE project_id = NEW.project_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table estimated_cost
-- ----------------------------
DROP TRIGGER IF EXISTS `UpdateTotalEstimatedCost_AfterDelete`;
delimiter ;;
CREATE TRIGGER `UpdateTotalEstimatedCost_AfterDelete` AFTER DELETE ON `estimated_cost` FOR EACH ROW BEGIN
    DECLARE total_cost DECIMAL(10, 2);

    -- Calcula el costo total estimado del proyecto después de la eliminación
    SELECT SUM(estimated_service_cost) INTO total_cost
    FROM Estimated_Cost
    WHERE project_id = OLD.project_id;

    -- Actualiza el costo total estimado en la tabla Projects
    UPDATE Project
    SET estimated_total_cost = COALESCE(total_cost, 0)
    WHERE project_id = OLD.project_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table stage_project
-- ----------------------------
DROP TRIGGER IF EXISTS `GenerateInvoice`;
delimiter ;;
CREATE TRIGGER `GenerateInvoice` AFTER UPDATE ON `stage_project` FOR EACH ROW BEGIN
    -- Variables para la factura 
    DECLARE p_client INT;
    DECLARE p_service_subtotal DECIMAL(10, 2);
    DECLARE p_subcontractor_subtotal DECIMAL(10, 2);
    DECLARE p_subtotal DECIMAL(10, 2);
    DECLARE p_total DECIMAL(10, 2);
    DECLARE p_cfdi INT; -- Código CFDI para la factura
    DECLARE p_invoice INT; -- ID de la factura
    DECLARE p_invoice_exists INT; -- Variable para verificar si existe una factura

    -- Verificar si el estado cambió a "completed" y si no existe ya una factura
    SELECT COUNT(*)
    INTO p_invoice_exists
    FROM invoice
    WHERE project_id = NEW.project_id AND stage_id = NEW.stage_id;

    IF NEW.status_id = 3 AND OLD.status_id != 3 AND p_invoice_exists = 0 THEN

        -- Obtener el cliente asociado al proyecto
        SELECT client_id
        INTO p_client
        FROM project
        WHERE project_id = NEW.project_id;

        -- Calcular subtotal de servicios
        SELECT COALESCE(SUM(service_cost), 0)
        INTO p_service_subtotal
        FROM stage_services
        WHERE project_id = NEW.project_id AND stage_id = NEW.stage_id;

        -- Calcular subtotal de subcontratistas
        SELECT COALESCE(SUM(subcontractor_cost), 0)
        INTO p_subcontractor_subtotal
        FROM stage_subcontractor
        WHERE project_id = NEW.project_id AND stage_id = NEW.stage_id;

        -- Sumar subtotales
        SET p_subtotal = p_service_subtotal + p_subcontractor_subtotal;

        -- Calcular el total (subtotal + IVA)
        SET p_total = p_subtotal + (p_subtotal * 0.16);

        -- Determinar el CFDI basado en los servicios
        SELECT MIN(cfdi_code)
        INTO p_cfdi
        FROM cfdi
        WHERE cfdi_code = (
            SELECT MIN(cfdi_code)
            FROM services
            JOIN stage_services ON services.service_id = stage_services.service_id
            WHERE stage_services.project_id = NEW.project_id
              AND stage_services.stage_id = NEW.stage_id
        );

        -- Si no se encontró un CFDI, usar un código por defecto
        IF p_cfdi IS NULL THEN
            SET p_cfdi = 84111506; -- CFDI genérico o predeterminado
        END IF;

        -- Insertar la factura en la tabla `invoice`
        INSERT INTO invoice (project_id, stage_id, client_id, date_issued, subtotal, total, cfdi_code)
        VALUES (NEW.project_id, NEW.stage_id, p_client, NOW(), p_subtotal, p_total, p_cfdi);

        -- Obtener el ID de la factura recién generada
        SET p_invoice = LAST_INSERT_ID();

        -- Insertar detalles de los servicios utilizados
        INSERT INTO invoice_details (invoice_id, reference_id, reference_type, hours_worked, total_cost)
        SELECT p_invoice, service_id, 'service', hours_used, service_cost
        FROM stage_services
        WHERE project_id = NEW.project_id AND stage_id = NEW.stage_id;

        -- Insertar detalles de los subcontratistas utilizados
        INSERT INTO invoice_details (invoice_id, reference_id, reference_type, hours_worked, total_cost)
        SELECT p_invoice, subcontractor_id, 'subcontractor', hours_used, subcontractor_cost
        FROM stage_subcontractor
        WHERE project_id = NEW.project_id AND stage_id = NEW.stage_id;

    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table stage_services
-- ----------------------------
DROP TRIGGER IF EXISTS `CalculateServiceCost_BeforeInsert`;
delimiter ;;
CREATE TRIGGER `CalculateServiceCost_BeforeInsert` BEFORE INSERT ON `stage_services` FOR EACH ROW BEGIN
    DECLARE service_rate DECIMAL(10, 2);

    -- Obtiene la tarifa por hora del servicio
    SELECT hourly_rate INTO service_rate
    FROM services
    WHERE service_id = NEW.service_id;
    
    -- Si no se encuentra el service_id, lanza error
    IF service_rate IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El service_id no existe o no tiene una tarifa definida.';
    END IF;

    -- Calcula el costo del servico en esa etapa
    SET NEW.service_cost = NEW.hours_used * service_rate;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table stage_services
-- ----------------------------
DROP TRIGGER IF EXISTS `UpdateBudgetServices_AfterInsert`;
delimiter ;;
CREATE TRIGGER `UpdateBudgetServices_AfterInsert` AFTER INSERT ON `stage_services` FOR EACH ROW BEGIN
    -- Llama al procedimiento para actualizar el presupuesto
    CALL UpdateBudget(NEW.project_id, NEW.stage_id);

    -- Llama al procedimiento para registrar en la tabla de auditoría
    CALL LogStageServicesChange(
        'INSERT', 
        NEW.project_id, 
        NEW.stage_id, 
        NEW.service_cost, 
        NULL, -- No hay datos antiguos
        NEW.service_cost, -- Datos nuevos
        USER() -- Usuario que hizo el cambio
    );
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table stage_services
-- ----------------------------
DROP TRIGGER IF EXISTS `CalculateServiceCost_BeforeUpdate`;
delimiter ;;
CREATE TRIGGER `CalculateServiceCost_BeforeUpdate` BEFORE UPDATE ON `stage_services` FOR EACH ROW BEGIN
    DECLARE service_rate DECIMAL(10, 2);

    -- Obtiene la tarifa por hora del servicio
    SELECT hourly_rate INTO service_rate
    FROM services
    WHERE service_id = NEW.service_id;
    
    -- Si no se encuentra el service_id, lanza error
    IF service_rate IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El service_id no existe o no tiene una tarifa definida.';
    END IF;

    -- Calcula el costo del servico en esa etapa
    SET NEW.service_cost = NEW.hours_used * service_rate;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table stage_services
-- ----------------------------
DROP TRIGGER IF EXISTS `UpdateBudgetServices_AfterUpdate`;
delimiter ;;
CREATE TRIGGER `UpdateBudgetServices_AfterUpdate` AFTER UPDATE ON `stage_services` FOR EACH ROW BEGIN
    -- Llama al procedimiento para actualizar el presupuesto
    CALL UpdateBudget(NEW.project_id, NEW.stage_id);

    -- Llama al procedimiento para registrar en la tabla de auditoría
    CALL LogStageServicesChange(
        'UPDATE', 
        NEW.project_id, 
        NEW.stage_id, 
        NEW.service_cost, 
        OLD.service_cost, -- Datos antiguos
        NEW.service_cost, -- Datos nuevos
        USER() -- Usuario que hizo el cambio
    );
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table stage_services
-- ----------------------------
DROP TRIGGER IF EXISTS `UpdateBudgetServices_AfterDelete`;
delimiter ;;
CREATE TRIGGER `UpdateBudgetServices_AfterDelete` AFTER DELETE ON `stage_services` FOR EACH ROW BEGIN
     -- Llama al procedimiento para actualizar el presupuesto
    CALL UpdateBudget(OLD.project_id, OLD.stage_id);

    -- Llama al procedimiento para registrar en la tabla de auditoría
    CALL LogStageServicesChange(
        'DELETE', 
        OLD.project_id, 
        OLD.stage_id, 
        OLD.service_cost, -- Datos antiguos (los eliminados)
        NULL, -- No hay datos nuevos
        USER() -- Usuario que hizo el cambio
    );
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table stage_subcontractor
-- ----------------------------
DROP TRIGGER IF EXISTS `CalculateSubcontractorCost_BeforeInsert`;
delimiter ;;
CREATE TRIGGER `CalculateSubcontractorCost_BeforeInsert` BEFORE INSERT ON `stage_subcontractor` FOR EACH ROW BEGIN
    DECLARE subcontractor_rate DECIMAL(10, 2);

    -- Obtiene la tarifa por hora del subcontratista
    SELECT hourly_rate INTO subcontractor_rate
    FROM subcontractor
    WHERE subcontractor_id = NEW.subcontractor_id;
    
        -- Si no se encuentra el subcontractor_id, lanza error
    IF subcontractor_rate IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El subcontractor_id no existe o no tiene una tarifa definida.';
    END IF;
    

    -- Calcula el costo del subcontratista en esa etapa
    SET NEW.subcontractor_cost = NEW.hours_used * subcontractor_rate;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table stage_subcontractor
-- ----------------------------
DROP TRIGGER IF EXISTS `UpdateBudgetSubcontractor_AfterInsert`;
delimiter ;;
CREATE TRIGGER `UpdateBudgetSubcontractor_AfterInsert` AFTER INSERT ON `stage_subcontractor` FOR EACH ROW BEGIN
    
    -- Llama al procedimiento para actualizar el presupuesto
    CALL UpdateBudget(NEW.project_id, NEW.stage_id);
  

    -- Llama al procedimiento para registrar en la tabla de auditoría
    CALL LogStageSubcontractorChange(
        'INSERT', 
        NEW.project_id, 
        NEW.stage_id, 
        NEW.subcontractor_cost, 
        NULL, -- No hay datos antiguos
        NEW.subcontractor_cost, -- Datos nuevos
        USER() -- Usuario que hizo el cambio
    );
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table stage_subcontractor
-- ----------------------------
DROP TRIGGER IF EXISTS `CalculateSubcontractorCost_BeforeUpdate`;
delimiter ;;
CREATE TRIGGER `CalculateSubcontractorCost_BeforeUpdate` BEFORE UPDATE ON `stage_subcontractor` FOR EACH ROW BEGIN
    DECLARE subcontractor_rate DECIMAL(10, 2);

    -- Obtiene la tarifa por hora del subcontratista
    SELECT hourly_rate INTO subcontractor_rate
    FROM subcontractor
    WHERE subcontractor_id = NEW.subcontractor_id;
    
           -- Si no se encuentra el subcontractor_id, lanza error
    IF subcontractor_rate IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El subcontractor_id no existe o no tiene una tarifa definida.';
    END IF;
    

    -- Calcula el costo del subcontratista
    SET NEW.subcontractor_cost = NEW.hours_used * subcontractor_rate;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table stage_subcontractor
-- ----------------------------
DROP TRIGGER IF EXISTS `UpdateBudgetSubcontractor_AfterUpdate`;
delimiter ;;
CREATE TRIGGER `UpdateBudgetSubcontractor_AfterUpdate` AFTER UPDATE ON `stage_subcontractor` FOR EACH ROW BEGIN
    -- Llama al procedimiento para actualizar el presupuesto
    CALL UpdateBudget(NEW.project_id, NEW.stage_id);
    
    -- Llama al procedimiento para registrar en la tabla de auditoría
    CALL LogStageSubcontractorChange(
        'UPDATE', 
        NEW.project_id, 
        NEW.stage_id, 
        NEW.subcontractor_cost, 
        OLD.subcontractor_cost, -- Datos antiguos
        NEW.subcontractor_cost, -- Datos nuevos
        USER() -- Usuario que hizo el cambio
    );
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table stage_subcontractor
-- ----------------------------
DROP TRIGGER IF EXISTS `UpdateBudgetSubcontractor_AfterDelete`;
delimiter ;;
CREATE TRIGGER `UpdateBudgetSubcontractor_AfterDelete` AFTER DELETE ON `stage_subcontractor` FOR EACH ROW BEGIN
     -- Llama al procedimiento para actualizar el presupuesto
    CALL UpdateBudget(OLD.project_id, OLD.stage_id);

    -- Llama al procedimiento para registrar en la tabla de auditoría
    CALL LogStageSubcontractorChange(
        'DELETE', 
        OLD.project_id, 
        OLD.stage_id, 
        OLD.subcontractor_cost, -- Datos antiguos (los eliminados)
        NULL, -- No hay datos nuevos
        USER() -- Usuario que hizo el cambio
    );
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
