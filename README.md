
Analyzed 260,920 IPL deliveries and 1,095 matches using MySQL _toss impact, top performers, venue stats and title history.

# IPL Data Analysis — SQL Project

Analyzed IPL match and delivery data (2008–2022) using MySQL to uncover performance trends, player insights, and strategic patterns.

## Dataset
- 1,095 matches
- 260,920 deliveries
- Source: Kaggle IPL Complete Dataset

## Tools Used
- MySQL Workbench
- Python (pandas, sqlalchemy) for data import
- GitHub for version control

## Business Questions and Insights

**Match and Season Analysis**

Q1. How many matches were played each season?
IPL has grown consistently, with 74 matches in recent seasons vs 58 in early years.

Q2. Which teams have won the most matches?
Mumbai Indians and Chennai Super Kings dominate all-time win charts.

Q3. Do teams prefer to bat or field after winning the toss?
Teams heavily prefer to field first, suggesting chasing is a winning strategy.

Q4. Does winning the toss help win the match?
Toss winners who choose to field win more often — toss has a measurable impact.

**Player Performance**

Q5. Which players won the most Player of the Match awards?
AB de Villiers and CH Gayle lead as consistent match-winners for franchises.

Q6. Who are the top run scorers?
Virat Kohli leads all-time runs and is a key asset for any franchise.

Q7. Who are the top wicket takers?
DJ Bravo and SL Malinga lead, proving death bowling is the most valued skill.

Q8. Which batters have the best strike rates?
Identifies explosive batters suited for finisher or pinch-hitter roles.

Q9. Which bowlers are most economical?
Low economy bowlers restrict runs in powerplay and death overs, making them high franchise value targets.

Q10. Who hits the most sixes?
Six-hitters drive ticket sales and fan engagement, making them high marketing value for franchises.

**Advanced Insights**

Q11. Most boundaries by a player?
Boundary hitters dominate T20 and are useful for auction targeting.

Q12. Best bowling figures in a single match?
Identifies match-winning bowlers capable of single-game impact.

Q13. Which team won the IPL each season?
Mumbai Indians and CSK have won the most titles, establishing themselves as dynasty franchises.

Q14. Highest team totals in an innings?
Identifies batting-friendly conditions and explosive team performances.

Q15. Which venues host the most matches?
Wankhede and Chinnaswamy are the busiest venues, making home advantage highly significant.

## Key Business Decisions Supported
- Franchise auction strategy to identify players with highest match impact
- Toss strategy recommendation to field first in most conditions
- Venue-based team selection to tailor XI to ground conditions
- Death bowling investment as the most impactful phase to win matches
- Marketing focus on six-hitters and match-winners for fan engagement

## Files
- ipl_queries.sql — All 15 SQL queries with business questions and comments
