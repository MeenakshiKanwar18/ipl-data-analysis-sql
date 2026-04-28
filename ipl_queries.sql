-- Q1. How many matches were played each season?
SELECT season, COUNT(*) AS total_matches
FROM matches
GROUP BY season
ORDER BY season;

-- Q2. Which teams have won the most matches in IPL history?
SELECT winner, COUNT(*) AS wins
FROM matches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY wins DESC;

-- Q3. Do teams prefer to bat or field after winning the toss?
SELECT toss_decision, COUNT(*) AS times_chosen
FROM matches
GROUP BY toss_decision
ORDER BY times_chosen DESC;

-- Q4. Does winning the toss actually help win the match?
SELECT toss_decision,
       COUNT(*) AS total,
       SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) AS toss_winner_won,
       ROUND(SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS win_percentage
FROM matches
WHERE winner IS NOT NULL
GROUP BY toss_decision;

-- Q5. Which players have won the most Player of the Match awards?
SELECT player_of_match, COUNT(*) AS awards
FROM matches
WHERE player_of_match IS NOT NULL
GROUP BY player_of_match
ORDER BY awards DESC
LIMIT 10;

-- Q6. Who are the top 10 highest run scorers in IPL?
SELECT batter, SUM(batsman_runs) AS total_runs
FROM deliveries
GROUP BY batter
ORDER BY total_runs DESC
LIMIT 10;

-- Q7. Who are the top 10 wicket takers in IPL?
SELECT bowler, COUNT(*) AS wickets
FROM deliveries
WHERE is_wicket = 1
AND dismissal_kind NOT IN ('run out', 'retired hurt', 'obstructing the field')
GROUP BY bowler
ORDER BY wickets DESC
LIMIT 10;

-- Q8. Which batters have the best strike rates? (minimum 200 balls faced)
SELECT batter,
       SUM(batsman_runs) AS runs,
       COUNT(*) AS balls_faced,
       ROUND(SUM(batsman_runs) * 100.0 / COUNT(*), 2) AS strike_rate
FROM deliveries
GROUP BY batter
HAVING balls_faced >= 200
ORDER BY strike_rate DESC
LIMIT 10;

-- Q9. Which bowlers are the most economical? (minimum 50 overs bowled)
SELECT bowler,
       SUM(total_runs) AS runs_given,
       COUNT(DISTINCT CONCAT(match_id, '-', `over`)) AS overs_bowled,
       ROUND(SUM(total_runs) / COUNT(DISTINCT CONCAT(match_id, '-', `over`)), 2) AS economy
FROM deliveries
GROUP BY bowler
HAVING overs_bowled >= 50
ORDER BY economy ASC
LIMIT 10;

-- Q10. Which players have hit the most sixes in IPL?
SELECT batter, COUNT(*) AS sixes
FROM deliveries
WHERE batsman_runs = 6
GROUP BY batter
ORDER BY sixes DESC
LIMIT 10;

-- Q11. Which players have hit the most boundaries (4s and 6s)?
SELECT batter,
       SUM(CASE WHEN batsman_runs = 4 THEN 1 ELSE 0 END) AS fours,
       SUM(CASE WHEN batsman_runs = 6 THEN 1 ELSE 0 END) AS sixes,
       SUM(CASE WHEN batsman_runs IN (4,6) THEN 1 ELSE 0 END) AS total_boundaries
FROM deliveries
GROUP BY batter
ORDER BY total_boundaries DESC
LIMIT 10;

-- Q12. What are the best bowling figures in a single IPL match?
SELECT match_id, bowler,
       COUNT(*) AS wickets,
       SUM(total_runs) AS runs_given
FROM deliveries
WHERE is_wicket = 1
AND dismissal_kind NOT IN ('run out', 'retired hurt', 'obstructing the field')
GROUP BY match_id, bowler
ORDER BY wickets DESC, runs_given ASC
LIMIT 10;

-- Q13. Which team won the IPL title each season?
SELECT season, winner
FROM matches
WHERE match_type = 'Final'
ORDER BY season;

-- Q14. What are the highest team totals in a single IPL innings?
SELECT match_id, batting_team, inning,
       SUM(total_runs) AS total_score
FROM deliveries
GROUP BY match_id, batting_team, inning
ORDER BY total_score DESC
LIMIT 10;

-- Q15. Which venues have hosted the most IPL matches?
SELECT venue, COUNT(*) AS matches_hosted
FROM matches
GROUP BY venue
ORDER BY matches_hosted DESC
LIMIT 10;