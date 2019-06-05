# PlagueInc

Project Description
-----------------------------------------------------------------------------------------------------------------------------
We are recreating the game Plague Inc., which is a game in which the player controls the development of a disease and attempts to cause extinction through strategically mutating the disease. The disease has three stats (infectivity, severity, and lethality). Infectivity affects the rate at which the disease spreads. Severity affects both the rate at which points get accumulated and how fast the cure develops. Lethality affects the rate at which the disease kills people. There are two types of mutations in the game that we implemented: transmission and symptom. The transmission mutations focus on increasing the disease's infectivity and severity, while the symptom mutations focus on increasing the disease's severity and lethality. Each mutation has a cost associated with it, which you pay for in points, and each mutation increases each of the three stats by a certain amount. Additionally, some mutations have prerequisites. For example, you cannot mutate Blood 2 before you get Blood 1.

The disease can spread in two ways. Either it can be transmitted by land to an adjacent city, or it can be transmitted by plane, but this can only occur from a city with an open airport to another city with an open airport. Once a certain number of people die, a cure effort begins, and once the cure reaches 100% development, it begins deployment, and if there are no more people with the disease left, the player loses. Also, when a certain number of people in a city die, the airport closes, so no more planes can come in or go out of the city. Finally, there are also random mutations that occur during the game. These help you develop your disease without expending any points, and if you do not want the mutation, you can always sell it for a refund.

-----------------------------------------------------------------------------------------------------------------------------
Directions
-----------------------------------------------------------------------------------------------------------------------------
The disease will automatically begin at the top of the map at the Pokemon League. Your points will increase incrementally, and when your points reach a high enough point, you can begin to buy mutations. You will also see red/orange circles pop up on cities. You can click those bubbles to get bonus points. On the right of the screen are the two drop down lists for transmission and symptom mutations. Once you choose a mutation, you can see how it will affect the disease, and if you want to commit to it, you can click the commit button. Likewise, you can sell mutations by selecting a mutation on the bottom drop down list and clicking "Sell". If you evolve mutations that increase severity, the rate at which you gain points increases.

The goal of the game is to infect everyone in the world and use the disease to kill people. The disease will begin to kill when lethality goes above 0, but as soon as the number of people dead reaches a certain point, a cure will begin developing. If you kill everyone in the world before a cure reaches 100% development, you win, and if the cure reaches 100%, you lose automatically.

-----------------------------------------------------------------------------------------------------------------------------
Dev Log
-----------------------------------------------------------------------------------------------------------------------------

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
Jeremy - I editted the population sizes because the cities at the bottom of the map were harder to reach and took significantly more time to infect. I also moved the news feature up so it didn't overlap with the DropDownLists. I also added the closeAirport feature, so whenever a city begins to lose a significant amount of its population, its airport will close and prevent any incoming or outgoing planes.

Victor - I fixed the bug where when a player has bought a mutation then sold the mutation, the post-reqs of that bought mutation are still inside the data structure of "mutations that are currently activated". This caused a problem when buying new mutations, because the post-reqs of the first mutation showed up when it wasn't supposed to. I also made it so that the player cannot sell a mutation when its post-reqs aren't sold yet. I also implemented a system where random bubbles (referred to as sporadicBubbles in the code) pop up on the map after a city is infected. I added where if an airport is closed, then it will be displayed on the news. I am working to turn the shade of cities progressively darker as % of dead in that city increases. I updated design choices to the README and working on debugging sporadic bubbles fading into the shading of dead cities. (There are a lot of bugs related to this so it took up my entire day).

Monday, June 3
-----------------------------------------------------------------------------------------------------------------------------
Jeremy - I added the random mutation feature so every once in a while, there will be a random mutation, and it appears in the news.

Victor - I worked on the selling system for when the "trees" from different base mutations converge on a spot in the map. This is a rather complicated feature and took up a lot of time.

Tuesday, June 4
-----------------------------------------------------------------------------------------------------------------------------
Jeremy - I fixed the bug where the percentage of people infected was lower than it was supposed to be. I also added the win and loss screens when the people dead reached the total population and when the cure reached 100% respectively. I also added a modified cure rate algorithm to be logistic and based on severity and number of people dead. Previously, the cure was unbeatable because the cure rate was constantly 1.5 times the death rate.

Victor - I continued to work on the selling system for converging trees of base mutations and finally did it. I also did an assortment of other minor details to add to the aesthetics of game, which one can see in the commit log.

-----------------------------------------------------------------------------------------------------------------------------
Design Choices:
- When buying or selling mutations, the warning that shows up in the Processing terminal does not actually cause any problems with the running of the game. The code that led to the warning message does not break the code, but it is necessary to refresh the DropdownLists when buying or selling.
- When buying mutations, the branching out (post-requirement) mutations are put at the bottom of the DropdownList to show clarity in what mutations lead to what kind of new mutations become available (it is easier to see what new mutations become available if they can always expect a consistent place to find their new mutations - the bottom).
- However, when selling mutations, the mutations are inserted in the DropdownList so that it is ordered correctly according to tier level. We don't need to always put the sold mutations at the bottom of the DropdownList because the player can rely on the program to re-add the mutation to the Transmission/Symptom DropdownLists, and does not need the same type of clarity that is utilized in the philosophy for buying mutations.
- To have a decrease in pointRate, either of two things needs to happen. Either lethality exceeds a certain threshold (we have multiple thresholds, each decreasing pointRate by 1 if they're passed) or the player has a certain number of points already (multiple thresholds for this too).
- We have deadRate be linear and infection rate be logistic so that people die faster than they are infected (making the player be careful about when to invest in mutations that cause a lot of deaths).
- We do not allow players to sell mutations that would result in a "dangling" mutation, aka a mutation on the mutation map that is not attached to any "base" mutation. We define base mutations as the mutations that the player has access to automatically upon starting the game.
- We make the random bubble popup rate decrease as more cities are infected (so that players don't accumulate too many points just by infecting every city first then pouring all their money into the killing mutations - that would make the game too easy).
- Random bubbles do not pop up for cities with 0 people infected, even if they have the number of people dead > 0.
- We have random mutations spontaneously mutate! So keep an eye on that news bar.
- Airport squares turn red when the airport has closed.
- The cure is 1.5 * percentage of people dead, meaning that at 67% of the population dead with no attempt to stop the cure effort, the player will lose. Even at 50%, with no attempt to stop the cure effort, the cure progress is 75%. This incentivizes the player to actively try to stop the cure effort. **(Cure to dead ratio subject to change)**
- We made the point rate and sporadic bubbles pop up on a random basis to increase the RNGness of the game.
- When red and orange bubbles show up on the map, the player must pop them to get their points. If the player does not do this and the bubbles fade away, then no points are gained (making sure the player is actively engaged in the game).
- If the percentage of dead in a *specific* city exceeds 25%, then the airport is closed.
- There are currently two ways to infect a city, through land transmission or through infected plane transmission.
- People start dying only when lethality > 0 and the rate at which this happens is based on lethality.
- **DO NOT SELECT TWO MUTATIONS IN DIFFERENT DROPDOWNLISTS IF YOU DO NOT WANT TO BUY BOTH WHEN YOU CLICK CONFIRM. This will buy both of them at the same time. To deselect, click the top bar (<Transmission> or <Symptom>)**
- We have a lot of player input. Examples include when player tries to buy a mutation that is already bought, we display a warning message in the same area that stats are displayed. When a player tries to sell a mutation that would result in a "dangling" mutation attached to no base mutation, we tell the player which mutation(s) must be sold before he/she can sell that desired mutation in the area where stats are shown.
- In general, player input/warning messages are shown in the area where stats are shown (below 2nd DropdownList but above 3rd DropdownList).
- Unfortunately, we did not have enough time to implement the ability mutations or cure bubbles, but with smart choices, the player should be able to win (plus this makes the game harder and more enjoyable!).

Cheat Codes:
- There is an area in the middle of the map of a circular canopy surrounding a circular pavement of stone surrounding a circular moat of water around a tree. If the player presses in the area inside that circular moat of water, he or she will be rewarded with plentiful points.

TO-DO features:
- refer to Prototype for more things

The Required Significant Algorithm that is part of the project: 
- selling and adding items to dropdownlists, and updating lists appropiately?
- the shading of the cities respectively to dead and disease percentage and bubble shading?
