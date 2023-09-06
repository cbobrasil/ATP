select 
  player_id
, name_first
, name_last
, hand
, dob
, ioc
, height
, wikidata_id
 from {{ ref('atp_players') }}