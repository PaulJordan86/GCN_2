# GCN_2
Taking a more in depth look at GCN video data
I created this dataset using Python, extracting data from the Global Cycling Network Youtube channel. I previously took a look at it
in the context of are questions the most watched and interacted with videos? With all of this data, I felt there must be more ideas to explore.

In this project, I have looked at how duration of videos affects views and interactions, and also 6 key 'types' of video - these are:
versus, top5, top10, tech, racing, how to, then other, which covers anything not in these other groups.

The dataset is collated from 2767 videos uploaded, scraped using the YouTube API.

Firstly, I have reverted to a metric for interaction score I created, weighting a comment as scoring 10x what a like is worth. I have also grouped video lengths, with aything over 15 minutes being classified as a 'long' form video.

I created views using case statements to classify the data into groups using SQL server, the using red-gate, formatted the qeuries to give a uniform look and make them accessible and easy to interpret, consistency in formatting keeps things clean.

To the first dashboard - duration. This gives some clear insights. From 0-4 minutes, a 1 minute video achieves the most views, likes and interaction score. People are enjoying shorter form videos. Perhaps when recording videos, it could pay to create a pair of 1 minute videos, rather than a single 2 or 3 minute video. Definitely worth a test.

Wwe can also see on this dashboard, that by number of 1 minute videos are  the least created of all the video lengths. Maybe because of the format, and content this is just the case, but possibly looking at a production level to reduce the length of some output, or put single videos into series of shorter videos could yield more interaction.

Other visuals, such as likes per minute give some flavour, as videos get longer, such as double in length, their likes don't double, so if the goal is likes, shorter form videos are more efficient at generating these for the time it takes to record them. Obviously video production is not just recording time!

Onto dashboard 2 - video type. 

People love a vs video. Cheap bike vs Superbike. Pro vs Amateur. Cav vs Sagan (those were the days!) The vs format is getting twice as many views, likes and comments as any other video type, keep making these videos! 

Tech and racing videos are achieving the fewest views and likes, possibly due to their smaller niche. However it would be intersting to look at whether these videos are giving value to paying subscribers, rather than casual viewers. These will appeal more to cyclists than a wider audience, and this category of viewer I would expect to be more likely to pay a  subscription, so despite the lower figures, these videos could be delivering a lot of value in terms of reducing churn and enriching the platform for paying customers.

Interaction score is worked based on dividing a combination of comments and likes by views. As top5 and 'other' videos are on average reacted with the most per view, with vs coming in a  strong third in this area also, despite having such a high view count. 

Vs videos are coming in at the third lowest count of videos created, this could be an area to develop more content, without oversaturating, there will be a balance to be struck here.

Thank you for taking a look at my insights into this channel, I plan to produce more content in this area soon and look at some other channels for insights.
