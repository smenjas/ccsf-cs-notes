-- Homework 2
-- CS 155A
-- Spring 2008
-- Ben Thornton


-- 1. Show the name and birthday of each player

select NAME, BIRTH_DATE from PLAYERS;


-- 2. Show the name initials and phone number of each player. Rename the phone
--    number column as "Phone"

select NAME, INITIALS, PHONENO as Phone from PLAYERS;


-- 3. Show all of the player numbers of players who have held the position of
--    'Treasurer' on the committee.

select PLAYERNO from COMMITTEE_MEMBERS where POSITION = 'Treasurer';


-- 4. For each match, show the match number, and the win percentage. Calculate
--    the win percentage as the number of sets won divided by the total number
--    of sets played.

select MATCHNO, ((WON / (WON + LOST)) * 100) from MATCHES;


-- 5. For each player, show the name, town, and phone number separated by spaces
--    in a single column.  Put parentheses around the phone number. Name the
--    column 'Data'.  (Note: see the bottom of p.123 for instructions on setting
--    up convenient string concatenation.)



