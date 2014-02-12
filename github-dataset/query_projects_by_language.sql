-- 

SELECT repository_owner AS owner, repository_name AS name
FROM [githubarchive:github.timeline]
WHERE repository_fork == "false"
AND type == "CreateEvent"
AND repository_language == "Groovy"
-- AND PARSE_UTC_USEC(repository_created_at) >= PARSE_UTC_USEC('2013-01-01 00:00:00')
-- AND PARSE_UTC_USEC(repository_created_at) < PARSE_UTC_USEC('2014-02-10 00:00:00')
GROUP BY owner, name
-- LIMIT 10000 