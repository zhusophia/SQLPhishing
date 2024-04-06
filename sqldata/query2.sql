/* Question #3 */

SELECT avg(n_redirection) AS "Average Redirections", phishing 
FROM phishdata
WHERE phishing = 1
UNION
SELECT avg(n_redirection) AS "Average Redirections", phishing
FROM phishdata
WHERE phishing = 0;
