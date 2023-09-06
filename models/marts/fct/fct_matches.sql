
{% set years = [1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023 ] %}



      {% for year in years %}
      {% if not loop.first %}
      union all
      {% endif %}
      select 
          '{{ year }}' as file_year 
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
        , loser_id
        , loser_seed
        , loser_entry
        , loser_name
        , loser_hand
        , loser_ht
        , loser_ioc
        , loser_age
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
 from {{ ref('atp_matches_' ~ year) }}
{% endfor %}