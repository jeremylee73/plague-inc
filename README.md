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

Tuesday, May 28
-----------------------------------------------------------------------------------------------------------------------------
Jeremy - I added the plane images and designed the animation for the planes moving from city to city. However, it is not thoroughly tested yet and is still buggy.

Victor - I successfully coded in the unstaging mutations for symptom mutations, but was unable to debug it for transmission mutations. Added labels for total % infected and total % dead. Played around with curbing pointRate growth and speeding up cureRate

Wednesday, May 29
-----------------------------------------------------------------------------------------------------------------------------
Jeremy - I got the planes moving but it slows down the entire program a lot.

Victor - I tested out cureRate and pointRate growth curves and fixed the labels for total % infected and total % dead.

Thursday, May 30
-----------------------------------------------------------------------------------------------------------------------------
Jeremy - The planes are now able to move to other cities, but they are overlapping each other and aren't rotating to face the city they are targetting.

Victor - I played around with pointRate to further finetune the balance of the game (so that pointRate "caps" at 1 after a certain point but also so that as more people die (indicating progression in the game) pointRate decreases as well to simulate the game getting increasingly harder, encouraging players to spend points wisely), and I also fixed the bug where pointRate could go below 1.

Friday, May 31
-----------------------------------------------------------------------------------------------------------------------------
Jeremy - I got the planes to be functional, including the rotations, by reloading the background every time a plane is generated and sent. I also created Plane as a new class to make it easier to track the x and y coordinates of planes.

Victor - I tried debugging the unstaging of tMutations when selling. I fixed the issue where first DNA bubble would develop a border around its circle.

Saturday, June 1
-----------------------------------------------------------------------------------------------------------------------------
Jeremy - I changed the disease stats (infectivity, severity, lethality) to be out of 200 because they were exceeding 100. I also moved the position of the news so that it doesn't overlap with the mutation dropdownlist.

Sunday, June 2
-----------------------------------------------------------------------------------------------------------------------------
Victor - I fixed the bug where when a player has bought a mutation then sold the mutation, the post-reqs of that bought mutation are still inside the data structure of "mutations that are currently activated". This caused a problem when buying new mutations, because the post-reqs of the first mutation showed up when it wasn't supposed to.


-----------------------------------------------------------------------------------------------------------------------------
Design Choices:
- When buying or selling mutations, the warning that shows up in the Processing terminal does not actually cause any problems with the running of the game. The code that led to the warning message does not break the code, but it is necessary to refresh the DropdownLists when buying or selling.
- When buying mutations, the branching out (post-requirement) mutations are put at the bottom of the DropdownList to show clarity in what mutations lead to what kind of new mutations become available (it is easier to see what new mutations become available if they can always expect a consistent place to find their new mutations - the bottom).
- However, when selling mutations, the mutations are inserted in the DropdownList so that it is ordered correctly according to tier level. We don't need to always put the sold mutations at the bottom of the DropdownList because the player can rely on the program to re-add the mutation to the Transmission/Symptom DropdownLists, and does not need the same type of clarity that is utilized in the philosophy for buying mutations.

BUGS:
- cannot sell mutations while its post-reqs are still in "Current Mutations" list
- overlapping city labels at the bottom poses a problem when the bubble shows up

TO-DO features:
- cure distribution and also stopping game when dead == diseased
- sporadic bubbles
- victory/loss screen
- fill in circle darker gray as death count goes up
- if they try to buy an item on already acquired mutations, display warning message (do same for selling an item on mutations not bought yet)
- automatic mutations
- implement feature where u get less and less refund for selling, and eventually u need to pay (which means showing stats for selling too)
- when ports/airports close, display that as news
- we might not even be able to get to the point of customizing transmission mutations lmao (hopefully we can add aMutations though)
- putting names of city next to them (and display % infected and % dead for each city if have time)
- refer to Prototype for more things

Extra Features:
- feature where you warn user if they don't have enough points to buy a mutation
- mistaking connected mutations as "hanging" mutations - not super important rn cuz super complicated and selling is only useful when mutations mutate randomly
- outskirt towns? (not mandatory, only if have extra time)

The Required Significant Algorithm that is part of the project: 
- selling and adding items to dropdownlists, and updating lists appropiately?
