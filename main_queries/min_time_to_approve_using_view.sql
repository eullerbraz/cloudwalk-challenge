USE cloudwalk_challenge;

SELECT
	MIN(time_to_approve) AS time_to_approve_average
FROM time_to_approve_with_function_view;
