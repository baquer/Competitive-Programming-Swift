Alice is playing an arcade game and wants to climb to the top of the leaderboard and wants to track her ranking. The game uses Dense Ranking, so its leaderboard works like this:

The player with the highest score is ranked number  on the leaderboard.
Players who have equal scores receive the same ranking number, and the next player(s) receive the immediately following ranking number.
For example, the four players on the leaderboard have high scores of 100, 90, 90,80 and . Those players will have ranks 1, 2, 2,3 and , respectively. If Alice's scores are 105, 85 and 75, her rankings after each game are1 , 3 and 5.

Function Description

Complete the climbingLeaderboard function in the editor below. It should return an integer array where each element represents Alice's rank after the  game.

climbingLeaderboard has the following parameter(s):

scores: an array of integers that represent leaderboard scores
alice: an array of integers that represent Alice's scores
Input Format

The first line contains an integer n, the number of players on the leaderboard. 
The next line contains  space-separated integers n, the leaderboard scores in decreasing order. 
The next line contains an integer,m , denoting the number games Alice plays. 
The last line contains  space-separated integers m[j], the game scores.
