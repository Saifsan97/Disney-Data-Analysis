# Disney+ Data Analysis
![Disney+ logo](https://i.pcmag.com/imagery/reviews/06d8Po5VgMWjpiRU0RpZoul-18.fit_scale.size_1028x578.v1711637649.jpg)

# Introduction:
Disney+ is a leading subscription video-on-demand service owned by The Walt Disney Company, launched on November 12, 2019. Offering a vast library of content from Disney, Pixar, Marvel, Star Wars, National Geographic, and more, Disney+ has rapidly become a major player in the global streaming market. As of 2022, Disney+ held a significant share of the video streaming market, commanding 21 percent in *Singapore* alone, illustrating its widespread popularity in key regions.

Globally, Disney+ reached over 157.8 million subscribers by the end of 2023, positioning itself as a major competitor in the streaming industry. The platform is available in more than 60 countries, catering to diverse audiences with localized content and multilingual support.

Using MySQL, I cleaned, analyzed, and normalized Disney+ streaming data, which included information on titles, genres, ratings, and regions of availability. Leveraging tools like Datawrapper and Tableau, I created interactive visualizations to highlight streaming trends, including the most popular genres, regional content preferences, and the evolution of Disney+ content over time. These insights help illustrate the platform's rapid growth and dominance in key markets.

# Objective:

1. What is the total number of movies and TV shows available on Disney+?
2. How many movies and TV shows were released in each decade?
3. What are the most common genres of movies and TV shows on Disney+?
4. Which country produces the most movies and TV shows on Disney+?
5. What is the average duration of movies and TV shows on Disney+?
6. What are the top-rated movies on Disney+?
7. What are the most popular ratings on Disney+?
8. Which were the top years in terms of the number of titles released?
9. Which actor/director has most films/series in Disney+?
10. What are the percentage relative frequency for genre?

 # Tools used:

1. Google Slides - to create the project proposal
2. MySQL - for data cleaning, data normalization and analysis process
3. Datawrapper - to create data visualizations
4. Tableau - to create dashboard
5. GitHub - for documentation

## Data Dictionary:

### 1. titles.csv
| Column name | Datatype | Description |
| :--- | :---  | :--- |
| id | string  | unique id for each entry |
| title | string |  The title of the movie or TV show |
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


### 2. credits.csv

| Column name | Datatype |  Description |
| :--- | :--- |  :--- |
| person_id | integer |  The person ID on JustWatch |
| id | integer |  The title ID on JustWatch|
| name | string |  The name of the actor or director |
|character | string | The character the actor or actress played in the movie or TV show |
| role | string |  The role the actor or director in the movie or TV show |

## Data Integrity:

* **Reliability and Originality**:
  Diego Enrique created and updated the raw dataset. This dataset contains two files, *titles.csv* which contain more than 1k tilles and *credits.csv* which contain 30k credits of actors and directors of each movie and show on the platform.

* **Comprehensiveness**:
  This dataset collected from JustWatch in March 2023, containing data available in the United States. 

* **Citation**:
  There are citation available on Kaggle and JustWatch.

* **Current**:
  The dataset is updated up to 2023. So it is quite current.

  # Recommendations for various stakeholders:

* **Members**: 

* **Investors**: 

* **Regulators**: 

* **Communities and organizations**: 

# Limitation of the project:

* One possible limitation of the Netflix dataset is that it only contains data up to March 2023, which may not reflect most current contents and trends.
* The data should include global size dataset instead of focusing on United States.
* Due to rigorous data cleaning of the dataset, many incorrect and inconsistent entries have been removed from the dataset. So, it does not cover the entire contents of Netflix.
* Since there were no reviews, we couldn’t perform sentiment analysis to provide more insights into user behavior and preferences.

# Some future project ideas:

* Analyze the relationship between the director and the cast of the movies and shows.
* Explore the variation of content in other countries as well as for different years.
* Perform sentiment analysis on the descriptions of the movies and shows.
* Create a recommendation system based on the user’s preferences and viewing history.

## Resources:

1. Dataset Used
   * [Netflix Movies and Series in Kaggle] (https://www.kaggle.com/datasets/dgoenrique/disney-movies-and-tv-shows/data?select=titles.csv)
2. Introduction
   * [Market share of video-on-demand providers in Singapore in 2022] (https://www.statista.com/forecasts/1366780/singapore-market-share-of-video-streaming-services#:~:text=In%202022%2C%20Disney%2B%20had%20the,services%20were%20YouTube%20and%20Netflix.)
  
   * https://github.com/Arpita-deb/netflix-movies-and-tv-shows/tree/main
   * https://github.com/SharifAthar/Netflix-Shows-and-Movies-SQL?tab=readme-ov-file

