# install.packages("devtools")
devtools::install_github("JaseZiv/worldfootballR")
library(worldfootballR)

library(readr)

install.packages("writexl")
library(writexl)

big5_player_stats <- fb_big5_advanced_season_stats(
  season_end_year= c(2023:2024),
  stat_type= "standard",
  team_or_player= "player"
)


la_liga_player_stats <- big5_player_stats %>%
  filter(Comp == "La Liga")  # Adjust the column name if necessary

# Glimpse the filtered data
glimpse(la_liga_player_stats)

# Save the filtered data
write_csv(la_liga_player_stats, "la_liga_player_stats.csv")

write_xlsx(la_liga_player_stats, "la_liga_player_stats.xlsx")