# https://school.programmers.co.kr/learn/courses/30/lessons/131535
# between - 이상 이하

SELECT COUNT(USER_ID)
FROM USER_INFO
WHERE AGE BETWEEN 20 AND 29
AND YEAR(JOINED) = '2021'
