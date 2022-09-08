#> https://ffsimulator.ffverse.com/index.html

library(ffsimulator)
library(dplyr)
library(ggplot2)

conn <- espn_connect(season = 2022, league_id = 31003357)

#> Simulate Season
espn_sim <- ff_simulate(conn, n_seasons = 100)
autoplot(espn_sim, type = "wins")
autoplot(espn_sim, type = "rank")
autoplot(espn_sim, type = "points")

#> Simulate Week 1
espn_wk1_sim <- ff_simulate_week(conn)
autoplot(espn_wk1_sim, type = "points")
autoplot(espn_wk1_sim, type = "luck")
