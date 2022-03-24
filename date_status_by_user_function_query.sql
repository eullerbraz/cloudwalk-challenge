USE cloudwalk_challenge;
DELIMITER $$

CREATE FUNCTION date_status_by_user(status_param VARCHAR(50), user_id_param INT)
RETURNS TIMESTAMP READS SQL DATA
BEGIN
	DECLARE date_return TIMESTAMP;
    SELECT
			data_horario_do_status
		 FROM
			cloudwalk_challenge.status
		 WHERE
			status = status_param AND
            user_id = user_id_param
		INTO date_return;
    RETURN date_return;
END $$

DELIMITER ;
