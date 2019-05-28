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
Jeremy - I created the drop down menu for transmission diseases and a button to submit them. It also changes what's displayed on the menu as more mutations are chosen, based on the prerequisites for each mutation (defined earlier). It is still buggy now, so it needs some fixing.

Victor - fixed bug where popping bubbles would make the bubbles permanently stay white, interfering with the filling in of the cities' circles.
Also fixed bug where the digits for points would overlap each other + fixed hitbox for popping bubbles.
I also added a very rudimentary cure rate system.

Tuesday, May 21
-----------------------------------------------------------------------------------------------------------------------------
Jeremy - I fixed the bug in addTMutation, so that should be working now. I also added the pointRate, in which points are generated at a certain pace throughout the game without having to pop bubbles. I also instantiated all of the Symptom mutations in the Disease class.

Victor - coded in growth curve for cure development and news display

Wednesday, May 22
-----------------------------------------------------------------------------------------------------------------------------
Jeremy - I added all the Symptom mutations to a DropdownList and made them selectable. I also created the image for airports and docks and added them to cities.

Victor - I added the display for stats of mutations when selecting them on the DropdownList.

Thursday, May 23
-----------------------------------------------------------------------------------------------------------------------------
Victor - Worked on selling mutations. So far, have added method to print out names of Mutations in a Mutation ArrayList, made it so that bought mutations are added to the DropdownList that displays acquired mutations (var: dSell), resized textbox for stats, added button for selling, and resized Confirm button. So far, selling is very buggy (DropdownList won't refresh after selling + decrements incorrectly).

Friday, May 24
-----------------------------------------------------------------------------------------------------------------------------
Victor - debugged Current Mutations dropdownlist and added immediate refreshing feature to Transmissions and Symptons dropdownlist.

Saturday, May 25
-----------------------------------------------------------------------------------------------------------------------------
Victor - reorganized a small block of code in main PlagueInc file, updating README bugs/to-do list, re-adding mutations to accessible mutation DropDownLists after selling them

Sunday, May 26
-----------------------------------------------------------------------------------------------------------------------------

Monday, May 27
-----------------------------------------------------------------------------------------------------------------------------
Jeremy - I added the mechanism for the disease killing people and made it a linear function, so that there is a risk of the disease killing people faster than it spreads. This forces the player to time the implementation of certain mutations. I also added the textbox below the city indicating how many people are dead. It is still buggy with the news on the right because it flickers a lot.
-----------------------------------------------------------------------------------------------------------------------------
Design Choices:
- When buying or selling mutations, the warning that shows up in the Processing terminal does not actually cause any problems with the running of the game. The code that led to the warning message does not break the code, but it is necessary to refresh the DropdownLists when buying or selling.
- When buying mutations, the branching out (post-requirement) mutations are put at the bottom of the DropdownList to show clarity in what mutations lead to what kind of new mutations become available (it is easier to see what new mutations become available if they can always expect a consistent place to find their new mutations - the bottom).
- However, when selling mutations, the mutations are inserted in the DropdownList so that it is ordered correctly according to tier level. We don't need to always put the sold mutations at the bottom of the DropdownList because the player can rely on the program to re-add the mutation to the Transmission/Symptom DropdownLists, and does not need the same type of clarity that is utilized in the philosophy for buying mutations.

BUGS:
- Victor: fix where when selling mutations, it unstages the mutations that had become available from the bought mutation (and then bug test this!).

TO-DO features:
- implement feature where u get less and less refund for selling, and eventually u need to pay
- feature where you warn user if they don't have enough points to buy a mutation
- if they try to buy an item on already acquired mutations, display warning message (do same for selling an item on mutations not bought yet)
- make pointRate grow in an appropriate logistic curve
- refer to Prototype for more things

The Required Significant Algorithm that is part of the project: 
- selling and adding items to dropdownlists, and updating lists appropiately?
