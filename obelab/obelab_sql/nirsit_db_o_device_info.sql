
-- Device Info Table

CREATE TABLE `o_device_info` (
  `o_device_num` int(11) NOT NULL AUTO_INCREMENT,
  `o_device_serial_no` varchar(700) NOT NULL,
  `o_device_validate` enum('valid','invalide') NOT NULL DEFAULT 'invalide',
  `o_device_alias` text,
  `o_device_date` datetime NOT NULL,
  `o_device_account_status` enum('o','x') NOT NULL DEFAULT 'x',
  `o_device_ref_ad_num` int(5) NOT NULL,
  `o_device_ref_doc_num` int(11) NOT NULL,
  PRIMARY KEY (`o_device_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
