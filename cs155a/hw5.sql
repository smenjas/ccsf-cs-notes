-- Homework 5
-- CS 155A
-- Spring 2008
-- Ben Thornton


-- 1. Show the names of every player who has had a  penalty.

select NAME from PLAYERS where PLAYERNO in (select PLAYERNO from PENALTIES);


-- 2. Show the payment date for each penalty given to players who have been the
--    committee secretary or chairman.

select PAYMENT_DATE from PENALTIES
 where PLAYERNO in (
	select PLAYERNO from COMMITTEE_MEMBERS
	 where POSITION = 'Secretary'
	    or POSITION = 'Chairman'
	);


-- 3. Show the win percentage of each match with a player who has received a
--    penalty.

select ((WON / (WON + LOST)) * 100) as WIN_PERCENTAGE
from MATCHES where PLAYERNO in 
	(select PLAYERNO from PENALTIES group by PLAYERNO);



-- 4. Show the match number for each match associated with a team from the first
--    division.

select MATCHNO from MATCHES where TEAMNO in 
	(select TEAMNO from TEAMS where DIVISION = 'first');


-- 5. For each penalty, show the amount, and the town where the penalized player
--    lives.

select AMOUNT, TOWN from PENALTIES, PLAYERS where PENALTIES.PLAYERNO = PLAYERS.PLAYERNO;


-- 6. Show the name of every player who has been secretary, and had a penalty.

select NAME from PLAYERS where PLAYERNO in
	(select PLAYERNO
		from PENALTIES inner join COMMITTEE_MEMBERS using(PLAYERNO)
	where POSITION = 'Secretary');


-- 7. Show the player name and amount for each penalty over $30 assessed to a
--    player who has served on the committee.

select NAME, AMOUNT from PLAYERS left join PENALTIES using(PLAYERNO)
where AMOUNT > 30 and PLAYERNO in
	(select PLAYERNO from COMMITTEE_MEMBERS);


-- 8. Show names and birth date of each player who is older than every player
--    who was born in a month that starts with a 'J'.  You don't need to figure
--    out the J months dynamically.  They are January, June, and July.

select NAME, BIRTH_DATE from PLAYERS where BIRTH_DATE < all
	(select BIRTH_DATE from PLAYERS where MONTH(BIRTH_DATE) in (1, 6, 7));

