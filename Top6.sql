with types
  as (select *,
             case
                  when video_title LIKE '%vs%' then 'vs'
                  when video_title LIKE '%how to%' then 'how to'
                  when video_title LIKE '%5%'
                    or video_title LIKE '%Five%' then 'top5'
                  when video_title LIKE '%10%'
                    or video_title LIKE '%ten%' then 'top10'
                  when video_title LIKE '%tech%' then 'tech'
                  when video_title LIKE '%race%'
                    OR video_title LIKE '%racing%' then 'racing'
                  Else 'other' end as type
        from gcn_video_data8)
select count(video_id) as video_count,
       type,
       AVG(view_count) as average_views,
	   AVG(like_count) as average_likes,
	   AVG(comment_count) as average_comments,
	   AVG(cast(10000.0* ((comment_count/10)+(like_count/100))/view_count as decimal (5,2))) as interaction_score
  from types
 group by type
 order by average_views