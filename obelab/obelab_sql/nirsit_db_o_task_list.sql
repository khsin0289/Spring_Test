
-- Task List Table

CREATE TABLE `o_task_list` (
  `o_task_ref_doc_num` int(11) NOT NULL,
  `o_task_nback` enum('o','x') NOT NULL DEFAULT 'o',
  `o_task_arithmetic` enum('o','x') NOT NULL DEFAULT 'o',
  `o_task_stroop` enum('o','x') NOT NULL DEFAULT 'o',
  `o_task_balance` enum('o','x') NOT NULL DEFAULT 'o',
  `o_task_squrt` enum('o','x') NOT NULL DEFAULT 'o',
  PRIMARY KEY (`o_task_ref_doc_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
