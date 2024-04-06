
/* let x be url length, let y be phishing */ 
/*
CREATE TABLE correlationurl(
    xi int,
    yi int, 
    xdif int, 
    ydif int, 
    xdifsqr int, 
    xy int
)

ALTER corrutable
ADD COLUMN xdif AS 
(url_length) - (avg(url_length));

CREATE TABLE corrtable AS 
SELECT url_length, phishing
FROM phishdata; 


ALTER TABLE corrtable
ADD COLUMN xdif int;

ALTER corrtable
ADD COLUMN xdif int AS 
(url_length) - (avg(url_length));
GENERATED ALWAYS AS ((url_length) - (avg(url_length)));

generated always as 
*/

SELECT t.url_length, t.phishing, SUM(t1.url_length - (avg(t1.url_length)))
FROM corrtable as t
JOIN corrtable as t1 ON t.phishing >= t1.phishing
GROUP BY t.url_length

SELECT * FROM corrtable;

