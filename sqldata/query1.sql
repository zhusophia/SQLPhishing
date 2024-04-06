/* Question #2 */

SELECT avg(url_length) AS "Average URL Length", phishing 
FROM phishdata
WHERE phishing = 1
UNION
SELECT avg(url_length) AS "Average URL Length", phishing
FROM phishdata
WHERE phishing = 0;


