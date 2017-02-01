# Recommender System for the Yelp Challenge Dataset
This is a recommendation system for the Yelp challenge.

The goal is to recommend businesses to users based on their reviews of other businesses.

The difficulty in this chosen task is the large number of users and businesses. To implement the classical collaborative filtering algorithm, a matrix with businesses as rows and users as columns should be created. This will be about 85500 by 686000, which would require a huge amount of memory.

This issue is naturally resolved when assuming that for a reocmmender system a certain number of ratings are found for every user and every business.

Also, this recommendation system only reocmmend businesses within states that they have given reviews for. Hence, only "states" with an adequate nmuber of businesses are considered for recommendations ( > 20 business/state).

# Requirements:
- Python 3
- Pandas ('0.19.2')
- NumPy
- Scipy.optimize.minimize
- ipython, or preferably, latest Anaconda with Python 3

# Usage:
Clone, extract datasets in a subdirectory yelp_dataset

A docker file will be added to simplify setup
