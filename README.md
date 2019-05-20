# PlagueInc

Thursday, May 16
-----------------------------------------------------------------------------------------------------------------------------
Jeremy - I wrote the logistic function simulator in the Experiments folder so that we can develop the Disease class later on more easily.

Friday, May 17
-----------------------------------------------------------------------------------------------------------------------------
Jeremy - I imported the map.png image from the data folder onto the background of the sketch window. I also created the City class with its variables and constructor. I created instance variables for each city on the map, and for each, I assigned a particular circle. I also stored the names of adjacent cities in an ArrayList variable in each City and drew lines between each City and its adjacent Cities.

Saturday, May 18
-----------------------------------------------------------------------------------------------------------------------------
Jeremy - I created the Disease class and added instance variables as well as the constructor. I created the logistic growth mechanism used to infect a city, and I also added spreadDisease in PlagueInc so that the disease can spread between cities. I also created the mechanism for changing the color of a city increasingly to red as it becomes more infected. Lastly, I created the ArrayList of possible transmission mutations in the Disease class.

Victor - I created the DNA pop-up bubbles and coded in a feature where they fade away to indicate how much time is left to pop the bubble, and also made it so that when the mouse presses the bubble, the points variable is increased by 2.

Monday, May 20
-----------------------------------------------------------------------------------------------------------------------------


Victor - fixed bug where popping bubbles would make the bubbles permanently stay white, interfering with the filling in of the cities' circles.
Also fixed bug where the digits for points would overlap each other