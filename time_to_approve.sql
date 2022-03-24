SELECT
	c.cnpj,
    (SELECT
			data_horario_do_status
		 FROM
			cloudwalk_challenge.status
		 WHERE
			status = 'approved' AND
            user_id = s.user_id) AS approve_date,
    TIMEDIFF(
		(SELECT
			data_horario_do_status
		 FROM
			cloudwalk_challenge.status
		 WHERE
			status = 'approved' AND
            user_id = s.user_id),
        (SELECT
			data_horario_do_status
		 FROM
			cloudwalk_challenge.status
		 WHERE
			status = 'pending_kyc' AND
            user_id = s.user_id)
	) AS time_to_approve
FROM 
	cloudwalk_challenge.clientes AS c
JOIN
	cloudwalk_challenge.status AS s
ON
	c.user_id = s.user_id
GROUP BY
	s.user_id;