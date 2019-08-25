WITH tempData(c,member_id) AS (
SELECT COUNT(*), checkout_item.member_id
FROM checkout_item
GROUP BY checkout_item.member_id
)
SELECT member.name FROM tempData, member 
WHERE member.id=tempData.member_id AND tempData.c>1