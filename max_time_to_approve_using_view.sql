USE cloudwalk_challenge;

SELECT
	MAX(time_to_approve) AS time_to_approve_max
FROM time_to_approve_with_function_view;
