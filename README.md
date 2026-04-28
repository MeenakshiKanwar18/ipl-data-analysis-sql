
Analyzed 260,920 IPL deliveries and 1,095 matches using MySQL _toss impact, top performers, venue stats and title history.

# 🏏 IPL Data Analysis — SQL Project

![SQL](https://img.shields.io/badge/MySQL-8.0-blue) ![Python](https://img.shields.io/badge/Python-3.13-green) ![Status](https://img.shields.io/badge/Status-Completed-success)

A comprehensive data analysis project on the Indian Premier League (IPL) using MySQL. This project explores 15 years of IPL data across 1,095 matches and 260,920 ball-by-ball deliveries to answer real business questions that franchise owners, team selectors, and cricket analysts care about.

## 📦 Dataset

| File | Rows | Description |
|------|------|-------------|
| matches.csv | 1,095 | Match-level data — teams, venue, toss, winner |
| deliveries.csv | 260,920 | Ball-by-ball data — runs, wickets, players |

- Seasons Covered: 2008 to 2022
- Source: Kaggle IPL Complete Dataset

## 🛠️ Tools and Technologies

| Tool | Purpose |
|------|---------|
| MySQL 8.0 | Database creation, querying, analysis |
| MySQL Workbench | Query execution and result visualization |
| Python 3.13 | Data ingestion using pandas and sqlalchemy |
| GitHub | Version control and project showcase |

## 🎯 Project Objectives

- Identify performance trends across 15 IPL seasons
- Discover which players and teams deliver the most consistent value
- Understand how toss decisions impact match outcomes
- Provide data-driven recommendations for franchise auction strategy
- Analyze venue patterns and their effect on team selection

## 📊 Business Questions and Insights

### 🔵 Section 1 — Season and Match Analysis

**Q1. How many matches were played each season?**

Tracked IPL growth from 58 matches in 2008 to 74 matches in recent seasons. Shows the league's commercial expansion and increasing franchise value over time.

**Q2. Which teams have won the most matches in IPL history?**

Mumbai Indians lead all-time wins followed closely by Chennai Super Kings. These two franchises have built the strongest ecosystems of consistent performers, proving that squad depth matters more than individual stars.

**Q3. Do teams prefer to bat or field after winning the toss?**

Over 60% of toss winners choose to field first. This reflects a data-driven shift in T20 strategy — chasing is statistically more advantageous because teams can adjust their target in real time.

**Q4. Does winning the toss actually help win the match?**

Teams that win the toss and choose to field win significantly more often. This validates the field-first strategy and suggests franchise coaching staff should train teams specifically for chase scenarios.

### 🟡 Section 2 — Player Performance Analysis

**Q5. Which players have won the most Player of the Match awards?**

AB de Villiers and CH Gayle dominate this list. These players consistently deliver match-winning performances under pressure — the highest value profile for any franchise at auction.

**Q6. Who are the top 10 highest run scorers in IPL history?**

Virat Kohli leads all-time runs by a significant margin. The gap between top-5 and rest of the list confirms that elite run-scorers are rare assets and justify premium auction bids.

**Q7. Who are the top 10 wicket takers in IPL history?**

DJ Bravo and SL Malinga dominate the wicket charts. Both are death-over specialists, confirming that the ability to take wickets in overs 16-20 is the single most valuable bowling skill in T20 cricket.

**Q8. Which batters have the best strike rates? (Minimum 200 balls faced)**

The minimum 200 balls filter removes small sample flukes and identifies genuinely explosive batters. High strike rate combined with volume indicates a reliable finisher or power hitter profile.

**Q9. Which bowlers are the most economical? (Minimum 50 overs bowled)**

Economy rate below 7 runs per over in T20 cricket is elite. This query identifies bowlers who consistently restrict opposition scoring — critical for building a defensible total or protecting a chase.

**Q10. Which players have hit the most sixes in IPL history?**

Six-hitters are not just match-winners — they are the primary drivers of crowd engagement, broadcast highlights, and franchise merchandise revenue. This analysis supports both sporting and commercial decision-making.

### 🔴 Section 3 — Advanced Analysis

**Q11. Which players have hit the most boundaries (4s and 6s combined)?**

Boundary percentage is a key metric in T20 analysis. Players who score predominantly through boundaries put pressure on the opposition field placements and force bowling changes earlier.

**Q12. What are the best bowling figures in a single IPL match?**

Identifies bowlers capable of single-game match impact. A bowler who can take 4+ wickets in a match changes the entire course — these are the profiles worth paying a premium for at auction.

**Q13. Which team won the IPL title each season?**

Mumbai Indians have won 5 titles, CSK have won 4. The data reveals that consistent title winners build core squads over multiple years rather than rebuilding every season — a clear franchise management lesson.

**Q14. What are the highest team totals in a single IPL innings?**

200+ totals cluster around specific venues and conditions. This query helps team management identify when aggressive batting lineups should be deployed versus conservative approaches.

**Q15. Which venues have hosted the most IPL matches?**

Wankhede Stadium and M. Chinnaswamy Stadium lead in matches hosted. Home venue familiarity is a measurable advantage — teams that play more matches at familiar grounds show stronger win rates.

## 💡 Key Business Decisions Supported by This Analysis

**Franchise Auction Strategy**
Data shows that all-rounders with both batting strike rate above 140 and economy below 8 are the rarest and most valuable profiles. Death bowlers with 100+ wickets command premium bids for good reason.

**Toss and Match Strategy**
Field-first strategy is statistically validated across 1,095 matches. Franchises should invest in building strong chasing lineups and train specifically for target-based scenarios.

**Venue-Based Team Selection**
Different venues favour different playing styles. Chinnaswamy rewards big hitters, Wankhede suits pace bowlers. Smart franchises tailor their XI to the venue rather than playing a fixed team.

**Player Retention Decisions**
Consistent performers in the top 10 across multiple categories — runs, wickets, Player of the Match — represent the safest retention choices. Volume of performance over 15 seasons is more reliable than one breakout year.

**Marketing and Fan Engagement**
Six-hitters and Player of the Match award winners drive social media engagement and merchandise revenue. Franchises should prioritize signing and promoting these profiles regardless of pure cricket metrics.



## Open ipl_queries.sql and run all 15 queries

## 📌 Key Findings Summary

- Mumbai Indians are the most successful IPL franchise with the highest win rate
- Fielding first after winning the toss increases win probability significantly
- Virat Kohli is the all-time leading run scorer by a large margin
- Death bowling specialists are the most impactful bowlers across all seasons
- Wankhede and Chinnaswamy are the two most used venues in IPL history


