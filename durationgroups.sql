with length
  as (Select *,
             case
                  when video_duration BETWEEN '00:00' AND '01:00' then '0min'
                  when video_duration BETWEEN '01:00' AND '02:00' then '1min'
                  when video_duration BETWEEN '02:00' AND '03:00' then '2min'
                  when video_duration BETWEEN '03:00' AND '04:00' then '3-4'
                  when video_duration BETWEEN '04:00' AND '06:00' then '4-6'
                  when video_duration BETWEEN '06:00' AND '08:00' then '6-8'
                  when video_duration BETWEEN '08:00' AND '10:00' then '8-10'
                  when video_duration BETWEEN '10:00' AND '15:00' then '10-15'
                  else 'long' end as duration,
             cast(DATEPART(hour, video_duration) as int) as minutes
        from GCN_video_data8),
     averages
  as (select video_title,
             AVG(view_count) as average_views,
             AVG(like_count) as average_likes,
             AVG(comment_count) as average_comments,
             AVG(cast(10000.0 * ((comment_count / 10) + (like_count / 100)) / view_count as decimal(5, 2))) as interaction_score
        from length
       group by video_title)
select case
            when minutes = 0 then like_count / 0.5
            else like_count / minutes end as 'likes_per_minute',
       l.*,
       interaction_score
  from averages a
  join length l
    on a.video_title = l.video_title
 order by likes_per_minute desc