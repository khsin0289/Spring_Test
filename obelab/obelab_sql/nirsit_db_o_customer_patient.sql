
-- 고객 ( 환자[patient] ) Table

CREATE TABLE `o_customer_patient` (
  `o_pati_num` int(11) NOT NULL AUTO_INCREMENT,
  `o_pati_last_name` varchar(100) NOT NULL,
  `o_pati_first_name` varchar(100) NOT NULL,
  `o_pati_birth` date NOT NULL,
  `o_pati_sex` enum('male','female') NOT NULL DEFAULT 'male',
  `o_pati_weight` float DEFAULT NULL,
  `o_pati_height` float DEFAULT NULL,
  `o_pati_race` enum('caucasian','asian','hispanic','african-american') DEFAULT NULL,
  `o_pati_blood_pressure_min` int(6) DEFAULT NULL,
  `o_pati_blood_pressure_max` int(6) DEFAULT NULL,
  `o_pati_exercise` int(4) DEFAULT NULL,
  `o_pati_coffee` int(4) DEFAULT NULL,
  `o_pati_alcohol` int(4) DEFAULT NULL,
  `o_pati_smoking` int(4) DEFAULT NULL,
  `o_pati_prior_illness` int(5) DEFAULT NULL,
  `o_pati_others` int(5) DEFAULT NULL,
  `o_pati_memo` text,
  `o_pati_reg_date` datetime NOT NULL,
  `o_pati_account_status` enum('o','x') NOT NULL DEFAULT 'x',
  `o_pati_ref_doc_num` int(11) NOT NULL,
  PRIMARY KEY (`o_pati_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
