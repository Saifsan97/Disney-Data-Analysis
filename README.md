# Disney+ Data Analysis
![Disney+ logo](https://i.pcmag.com/imagery/reviews/06d8Po5VgMWjpiRU0RpZoul-18.fit_scale.size_1028x578.v1711637649.jpg)

# Introduction:
Disney+ is a leading subscription video-on-demand service owned by The Walt Disney Company, launched on November 12, 2019. Offering a vast library of content from Disney, Pixar, Marvel, Star Wars, National Geographic, and more, Disney+ has rapidly become a major player in the global streaming market. As of 2022, Disney+ held a significant share of the video streaming market, commanding 21 percent in *Singapore* alone, illustrating its widespread popularity in key regions.

Globally, Disney+ reached over 157.8 million subscribers by the end of 2023, positioning itself as a major competitor in the streaming industry. The platform is available in more than 60 countries, catering to diverse audiences with localized content and multilingual support.

Using MySQL, I cleaned, analyzed, and normalized Disney+ streaming data, which included information on titles, genres, ratings, and regions of availability. Leveraging tools like Datawrapper and Tableau, I created interactive visualizations to highlight streaming trends, including the most popular genres, regional content preferences, and the evolution of Disney+ content over time. These insights help illustrate the platform's rapid growth and dominance in key markets.

# Objective:

1. What is the total number of movies and TV shows available on Disney+?
2. What were the top 10 *movies* according to IMDB score?
3. What were the top 10 *shows* according to IMDB score?
4. What were the bottom 10 *movies* according to IMDB score?
5. What were the bottom 10 *shows* according to IMDB score?
6. What were the average IMDB and TMDB scores for shows and movies?
7. Count of movies and shows in each decade
8. What were the average IMDB and TMDB scores for each production country?
9. What were the average IMDB and TMDB scores for each age certification for shows and movies?
10. What were the 5 most common age certifications for movies?
11. Calculating the average runtime of movies and TV shows separately
12. Finding the titles and  directors of movies released on or after 2023
13. Which shows on Disney+ have the most seasons?
14. Which genres had the most movies?
15. Which genres had the most shows?
16. Titles and Directors of movies with high IMDB scores (>7.5) and high TMDB popularity scores (>80)
17. Find the total number of titles for each year?
18. Actors who have starred in the most highly rated movies or shows
    

 # Tools used:

1. Google Slides - to create the project proposal
2. MySQL - for data cleaning, data normalization and analysis process
3. Datawrapper - to create data visualizations
4. Tableau - to create dashboard
5. GitHub - for documentation

# Data Dictionary:

## 1. titles.csv
| Column name | Datatype | Description |
| :--- | :---  | :--- |
| id | string  | unique id for each entry |
| t_title | string |  The title of the movie or TV show |
| show_type | string | 	The type of the movie or TV show |
| description | string |  The description of the movie or TV show |
| release_year | integer |  The year the movie or TV show was released |
| age_certification	| string |  The age certification of the movie or TV show |
| runtime | integer | 	The runtime of the movie or TV show |
| genres | string |  The genres of the movie or TV show |
| production_countries | string |  The production countries of the movie or TV show |
| seasons	| integer | The number of seasons of the TV show |
| imdb_id | integer |  The title ID on IMDB of the movie or TV show |
| imdb_score | float |  The IMDB score of the movie or TV show |
| imdb_votes | integer |  The number of IMDB votes of the movie or TV show |
| tmdb_popularity | float |  The popularity on TMDB of the movie or TV show |
| tmdb_score | float |  The TMDB score of the movie or TV show |


## 2. credits.csv

| Column name | Datatype |  Description |
| :--- | :--- |  :--- |
| person_id | integer |  The person ID on JustWatch |
| id | integer |  The title ID on JustWatch|
| name | string |  The name of the actor or director |
|character | string | The character the actor or actress played in the movie or TV show |
| role | string |  The role the actor or director in the movie or TV show |



# Data Integrity:

* **Reliability and Originality**:
  Diego Enrique created and updated the raw dataset. This dataset contains two files, *titles.csv* which include more than 1k tiles and *credits.csv* which contain 30k credits of actors and directors of each movie and show on the platform.

* **Comprehensiveness**:
  This dataset collected from JustWatch in March 2023, containing data available in the United States. 

* **Citation**:
  There are citation available on Kaggle and JustWatch.

* **Current**:
  The dataset is updated up to 2023. So it is quite current.

# Data Analysis:

### Please refer to [Disney+ Report](https://github.com/Saifsan97/Disney-Data-Analysis/blob/main/Disney%2B%20Report.pdf) for the overall analysis.

## What are the average IMDB and TMDB scores for each production country?
### Using MySQL for data analysis
![image](https://github.com/user-attachments/assets/a3eab412-5270-4e4c-bd1f-425cd0d5ee39)

### Create data visualization through Data Wrapper
![image](https://github.com/user-attachments/assets/ff1d4275-576c-41e4-a8ab-a40c5213e718)

### Analysis 1 (Top-Performing Countries):
The highest average IMDB score is 9.00 for the combination of countries ['NZ', 'US', 'GB'], with a TMDB score of 8.40.
Korea ('KR') and the US ('US') have the highest TMDB score at 9.20, with a strong IMDB score of 8.60. Other notable high-scoring combinations include ['US', 'MX'] (IMDB: 8.40, TMDB: 8.23), and Puerto Rico ('PR') (IMDB: 8.30, TMDB: 7.00).

### Analysis 2 (Strong Regional Variations):
There is a significant range of ratings across different country combinations, indicating that regional preferences vary greatly. For instance, ['NZ', 'US', 'GB'] and ['KR', 'US'] rate content much higher than countries like ['US', 'GB', 'DE'] (IMDB: 4.30, TMDB: 4.41).

### Recommendations (Target High-Scoring Regions for New Releases):
Disney+ should leverage regions that show consistently high ratings for content distribution, especially for high-budget and original content. Countries like ['NZ', 'US', 'GB'], ['KR', 'US'], and ['US', 'MX'] show high appreciation of the content, making them ideal targets for new exclusive releases and marketing campaigns.










# Recommendations for various stakeholders:

## Disney+ Employees:
* Enhance Quality of Family-Oriented Content: Employees working in content development and production should focus on improving the storytelling and production quality of family-oriented content. Conducting audience surveys and focus groups can help understand viewer expectations. Engaging with modern family dynamics and inclusive themes could resonate well with current audiences.
* Diversify Content Creation Across Genres: With steady growth in the number of titles, employees should be encouraged to explore diverse genres. Given the interest in hybrid genres (e.g., action, sci-fi, fantasy), exploring new content ideas that combine elements of adventure, comedy, and drama could cater to a wide range of viewers.

## Disney+ Managements:
* Invest in Mature-Themed Content: The growing audience demand for PG-13, R, and TV-MA content offers Disney+ an opportunity to create more mature-themed content, which could diversify its portfolio beyond family-oriented programming. Management should allocate resources to developing high-quality, mature original series and films that cater to an older audience, while maintaining the platform’s brand standards.
* Expand Region-Specific Strategies: Countries like New Zealand, the U.S., and South Korea have shown higher appreciation for content. Management should consider prioritizing new releases and marketing campaigns in these high-scoring regions. For lower-scoring regions such as Germany and the U.K., a deeper market analysis is recommended to align content with local preferences. Creating localized content or modifying marketing strategies to resonate better with regional audiences could enhance content performance in those markets.

## Disney+ Investors:
* Disney+ has seen steady growth in its title count since the late 1990s, with a surge in the 2010s. Investors should feel confident in Disney+’s capacity to scale its content and expand its user base. The growth in the number of titles, particularly from 2019 to 2022, suggests that Disney+ is positioned to continue capturing a larger share of the streaming market.
* Focus on High-Scoring Regions for Market Expansion: Investors should support Disney+ as it targets regions with higher content reception scores (e.g., U.S., Mexico, South Korea). By focusing marketing efforts and content development in these regions, Disney+ can achieve higher engagement and subscription rates, further driving platform growth.

## Disney+ Communities:
* Strengthen Community Engagement through Feedback and Reviews: The community can play a crucial role in improving content quality through feedback. Encouraging viewers to leave ratings and reviews on platforms like TMDB could help creators understand audience preferences and improve content quality over time. Disney+ can build a more interactive user base by promoting user engagement with review prompts after watching content.
* Promote Educational and Family-Friendly Content: Communities, especially schools and family organizations, should be aware of Disney+'s wide range of educational and family-friendly content. By promoting Disney+'s documentaries and family series, the platform can further solidify its reputation as a provider of safe, high-quality content that educates and entertains.


# Limitation of the project:

* One possible limitation of the Disney+ dataset is that it only contains data up to March 2023, which may not reflect most current contents and trends.
* The data should include global size dataset instead of focusing on United States.
* Due to rigorous data cleaning of the dataset, many incorrect and inconsistent entries have been removed from the dataset. So, it does not cover the entire contents of Disney+.


# Resources:

1. Dataset Used
   * [Disney+ Movies and Series in Kaggle](https://www.kaggle.com/datasets/dgoenrique/disney-movies-and-tv-shows/data?select=titles.csv)
2. Introduction
   * [Market share of video-on-demand providers in Singapore in 2022](https://www.statista.com/forecasts/1366780/singapore-market-share-of-video-streaming-services#:~:text=In%202022%2C%20Disney%2B%20had%20the,services%20were%20YouTube%20and%20Netflix.)
  
  

