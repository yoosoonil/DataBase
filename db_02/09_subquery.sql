-- 특정 성씨별로 가장 적은 나이
SELECT
    last_name,
    MIN(age)
WHERE users
GROUP BY last_name;

