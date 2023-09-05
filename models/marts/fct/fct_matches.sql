select 
  file_year 
, tourney_id
, tourney_name
, surface
, draw_size
, tourney_level
, tourney_date
, match_num
, winner_id
, winner_seed
, winner_entry
, winner_name
, winner_hand
, winner_ht
, winner_ioc
, winner_age
, dim_winner.height as winner_height
, dim_winner.ioc as dim_winner_country
, loser_id
, loser_seed
, loser_entry
, loser_name
, loser_hand
, loser_ht
, loser_ioc
, loser_age
, dim_looser.height as loser_height
, dim_looser.ioc as dim_looser_country
, score
, best_of
, round
, minutes
, w_ace
, w_df
, w_svpt
, w_1stIn
, w_1stWon
, w_2ndWon
, w_SvGms
, w_bpSaved
, w_bpFaced
, l_ace
, l_df
, l_svpt
, l_1stIn
, l_1stWon
, l_2ndWon
, l_SvGms
, l_bpSaved
, l_bpFaced
, winner_rank
, winner_rank_points
, loser_rank
, loser_rank_points
, file_source
 from 
  {{ ref('stg_matches') }} as stg
 left join 
  {{ ref('dim_players') }} as dim_winner 
    on stg.winner_id = dim_winner.player_id
 left join 
  {{ ref('dim_players') }} as dim_looser
    on stg.loser_id = dim_looser.player_id