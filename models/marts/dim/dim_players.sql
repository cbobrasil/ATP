select 
  md5(player_id) as unique_id
, player_id
, name_first
, name_last
, hand
, dob
, ioc
, height
, wikidata_id

-- from {{ source('seeds', 'atp_players') }}
