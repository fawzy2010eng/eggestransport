# eggestransport
Part B: Golden Eggs
After the Aucks transport the cows, one of their interns finds flocks of golden geese. Due to budget cuts they are forced to downsize their ships so they can’t simply take the geese back, but instead decide to take their golden eggs back. Their ships can only hold a certain amount of weight, and are very small inside. So, because all the eggs are the same size, but have different 5
weights, they want to bring back as few eggs as possible that fill their ship’s weight limit. Golden
eggs are all the same size, but may have different densities, thus 1 two-pound egg is better than 2 one-pound eggs.
Problem B.1: Dynamic Programming: Hatching a Plan
The Aucks want to carry as few eggs as possible on their trip as they don’t have a lot of space on their ships. They have taken detailed notes on the weights of all the eggs that geese can lay in a given flock and how much weight their ships can hold. Implement a dynamic programming algorithm to find the minimum number of eggs needed to make a given weight for a certain ship in dp_make_weight. The result should be an integer representing the minimum number of eggs from the given flock of geese needed to make the given weight. Your algorithm does not need to return what the weight of the eggs are, just the minimum number of eggs.
A solution that does not use dynamic programming will receive zero points for this problem.
Notes:
- Dynamic programming algorithms will be covered in lecture on October 26th.
- If you try using a brute force algorithm on this problem, it will take a substantially long time to generate the correct output if there are a large number of egg weights available.
- You may implement your algorithm using the top-down recursive method or the bottom-up tabulation method. The former was covered in lecture, but we will accept either method.
- The memo parameter in dp_make_weight is optional. You may or may not need to use this parameter depending on your implementation.
Assumptions: - All the eggs weights are unique between different geese, but a given goose will always lay the same size egg - The Aucks can wait around for the geese to lay as many eggs as they need.
Example: Suppose the first ship can carry 99 pounds and uses the first flock of geese they find, which contains geese that lay eggs of weights 1, 5, 10, and 20 pounds.
Your dynamic programming algorithm should return 10 (the minimum number of egg needed to make 99 pounds is 4 eggs of 20 pounds, 1 egg of 10 pounds, 1 egg of 5 pounds, and 4 eggs of 1 pound).
Hints:
- Dynamic programming involves breaking a larger problem into smaller, simpler subproblems, solving the subproblems, and storing their solutions. What are the subproblems in this case? What values do you want to store? 6
- This problem is analogous to the knapsack problem, which you saw in lecture. Imagine the eggs are items you are packing. What is the objective function? What is the weight limit in this case? What are the values of each item? What is the weight of each item?
