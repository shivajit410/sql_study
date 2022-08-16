-- Find the 3rd highest paid player.

SELECT temp.firstname, temp.lastname, temp.amount FROM (
    SELECT p.firstname, p.lastname, s.amount, DENSE_RANK() OVER(ORDER BY s.amount DESC) myrank 
    from player p INNER JOIN salary s ON p.playerid = s.playerid
) temp WHERE temp.myrank=3;



-- Find the 3rd lowest paid player.

SELECT temp.firstname, temp.lastname, temp.amount FROM (
    SELECT p.firstname, p.lastname, s.amount, DENSE_RANK() OVER(ORDER BY s.amount) myrank 
    from player p INNER JOIN salary s ON p.playerid = s.playerid
) temp WHERE temp.myrank=3;



-- Which position scored the most goals?

SELECT temp.positionname from (
    SELECT pos.positionid, pos.positionname, count(pos.positionid) goalscored, 
    DENSE_RANK() OVER(ORDER BY count(pos.positionid) DESC) myrank
    FROM playerposition pos 
    INNER JOIN player pl ON pos.positionid = pl.positionid
    INNER JOIN scoredgoal sg ON pl.playerid = sg.playerid GROUP BY pos.positionname
) temp WHERE myrank=1;



-- Which players never scored?

SELECT pl.firstname, pl.lastname FROM player pl 
WHERE pl.playerid NOT IN (
    SELECT  pl.playerid FROM player pl
    INNER JOIN scoredgoal sg ON pl.playerid = sg.playerid
);

SELECT p.firstname, p.lastname FROM player p
WHERE p.playerid NOT IN (SELECT playerid FROM scoredgoal)



-- Which player scored the most goals?

SELECT temp.firstname, temp.lastname FROM(
    SELECT pl.firstname, pl.lastname, count(sg.playerid) goalscored,
    DENSE_RANK() OVER(ORDER BY count(sg.playerid) DESC) myrank
    from player pl
    INNER JOIN scoredgoal sg on pl.playerid = sg.playerid GROUP BY sg.playerid
) temp where myrank=1;



-- Which player scored the most goals in a single game?

SELECT temp2.firstname, temp2.lastname FROM (
    SELECT temp1.firstname, temp1.lastname, temp1.gameid, temp1.playerid, temp1.goalscored,
    DENSE_RANK() OVER(ORDER BY temp1.goalscored DESC) myrank2
    FROM (
        SELECT pl.firstname, pl.lastname, sg.gameid, pl.playerid, count(pl.playerid) goalscored,
        DENSE_RANK() OVER (PARTITION BY sg.gameid ORDER BY count(pl.playerid) DESC) myrank
        FROM player pl
        INNER JOIN scoredgoal sg ON pl.playerid = sg.playerid
        GROUP BY sg.gameid, pl.playerid
    ) temp1 WHERE temp1.myrank=1
)temp2 WHERE temp2.myrank2=1;



-- What is the salary paid per goal per position?

SELECT  pos.positionname, round(avg(sal.amount),2) average
FROM salary sal
INNER JOIN player pl ON sal.playerid = pl.playerid
INNER JOIN playerposition pos ON pl.positionid = pos.positionid
INNER JOIN scoredgoal sg ON pl.playerid = sg.playerid
GROUP BY pos.positionname;



-- What is the average minute of scoredgoals for each game?

SELECT temp.gameid, temp.averageMin FROM (
    SELECT sg.minute, sg.gameid,  avg(sg.minute) averageMin,
    DENSE_RANK() OVER(PARTITION BY sg.gameid) myrank
    FROM scoredgoal sg
    GROUP BY sg.gameid
) temp;

