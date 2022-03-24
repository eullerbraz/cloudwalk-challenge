USE cloudwalk_challenge;

SELECT
	SEC_TO_TIME(
		AVG(
			TIME_TO_SEC(time_to_approve)
		)
	) AS time_to_approve_average
FROM time_to_approve_with_function_view;
