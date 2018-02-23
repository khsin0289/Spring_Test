
-- 고객 ( 환자[patient] ) Task Data Table

CREATE TABLE `o_customer_petient_task_data` (
  `o_pati_task_num` int(11) NOT NULL AUTO_INCREMENT,
  `o_pati_task_type` int(5) NOT NULL,
  `o_pati_task_type_detail` int(5) NOT NULL,
  `o_pati_task_opinion` varchar(2000) DEFAULT NULL,
  `o_pati_task_analysis_file` varchar(1000) DEFAULT NULL,
  `o_pati_task_date` datetime NOT NULL,
  `o_pati_task_account_status` enum('o','x') NOT NULL DEFAULT 'x',
  `o_pati_task_ref_pati_num` int(11) NOT NULL,
  PRIMARY KEY (`o_pati_task_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
