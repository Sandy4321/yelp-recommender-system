# nyker
The following is an incomplete task on a recommendation system for the yelp challenge dataset.

The goal is to recommend businesses to users based on their reviews of other businesses, within a 30 km geographical distance of a reviewed business.

The difficulty in this chosen task is the large number of users and businesses. To implement the classical collaborative filtering algorithm, a matrix with businesses as rows and users as columns should be created. This will be about 85500 by 686000, which would require a huge amount of memory.

To reduce the amount of memory needed, some clustering was needed. For example, only consider businesses within the same "state", then only take businesses that are within a 30 km distance from each other.

For the dataset, businesses lie within latitudes 32 and 56 North.

In this range of latitudes, 1 degree in longitude ranges between 60 to 95 km. Hence, nearby business ( < 30 km) should also be within 0.5 degree of longitude (however, near 32 N distances will be < 47 km)

For latitudes, one degree difference is about 110 km, so 0.3 degrees of difference in business latitudes is used to consider nearby businesses.

Another clustering can be by checking the attributes of a business. For restaurants, for example, a business would have an attribute "Good For", with values that would indicate that it serves food.

# Requirements:
- Python 3
- Pandas ('0.19.2')
- NumPy
- geopy, Shapely, geopandas (not required, a simpler approach is used to find distances on Earth)
- pickle
- ipython, or preferably, latest Anaconda with Python 3

# Usage:
Clone, extract datasets in a subdirectory yelp_dataset

A docker file is not included, as the task is not complete
