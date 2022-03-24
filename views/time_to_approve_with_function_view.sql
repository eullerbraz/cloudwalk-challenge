USE cloudwalk_challenge;

CREATE VIEW
	time_to_approve_with_function_view
AS
	SELECT
		c.cnpj,
		(SELECT
			date_status_by_user('approved', s.user_id)
		) AS approve_date,
		TIMEDIFF(
			(SELECT
				date_status_by_user('approved', s.user_id)
			),
			(SELECT
				date_status_by_user('pending_kyc', s.user_id)
			)
		) AS time_to_approve
	FROM 
		clientes AS c
	JOIN
		status AS s
	ON
		c.user_id = s.user_id
	GROUP BY
		s.user_id;
