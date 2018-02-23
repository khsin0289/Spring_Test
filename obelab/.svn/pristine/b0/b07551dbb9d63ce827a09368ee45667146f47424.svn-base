
-- 고객( 의사[doctor] ) Table

CREATE TABLE `o_customer_doctor` (
  `o_doc_num` int(11) NOT NULL AUTO_INCREMENT,
  `o_doc_email` varchar(200) NOT NULL,
  `o_doc_pw` varchar(200) NOT NULL,
  `o_doc_last_name` varchar(200) NOT NULL,
  `o_doc_first_name` varchar(200) NOT NULL,
  `o_doc_tel` varchar(200) NOT NULL,
  `o_doc_department` varchar(400) NOT NULL,
  `o_doc_use_status` enum('lock','unlock') NOT NULL DEFAULT 'lock',
  `o_doc_task` int(5) NOT NULL DEFAULT '0',
  `o_doc_analysis` enum('valid','invalide') NOT NULL DEFAULT 'valid',
  `o_doc_report` enum('valid','invalide') NOT NULL DEFAULT 'valid',
  `o_doc_date` datetime NOT NULL,
  `o_doc_account_status` enum('o','x') NOT NULL DEFAULT 'x',
  PRIMARY KEY (`o_doc_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
