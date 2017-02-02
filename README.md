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
1) Clone reposity
2) Extract the dataset json files in the subdirectory yelp_dataset
3) Open/run the recommender system.ipynb notebook

# A Dockerfile is included in the repo, and here is how it can be used:

1) Clone reposity
2) Extract the dataset json files in the subdirectory yelp_dataset
3) Run the following commands,
```
cd nyker
docker build -t yelp
docker run -v `pwd`/.:/nyker -p 8888:8888 -it yelp
# then from within the docker container:
cd nyker
jupyter notebook --ip=0.0.0.0
# the --ip=0.0.0.0 might be needed if running on linux guest in virtualbox
```
4) open your browser to localhost:8888
5) open the "recommender system.ipynb" notebook, and follow along.
