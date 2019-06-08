###########################
# 6.0002 Problem Set 1b: Space Change
# Name:
# Collaborators:
# Time:
# Author: charz, cdenise

# ================================
# Part B: Golden Eggs
# ================================

# Problem 1
def dp_make_weight(egg_weights, target_weight, memo={}):
    """
    Find number of eggs to bring back, using the smallest number of eggs. Assumes there is
    an infinite supply of eggs of each weight, and there is always a egg of value 1.

    Parameters:
    egg_weights - tuple of integers, available egg weights sorted from smallest to largest value (1 = d1 < d2 < ... < dk)
    target_weight - int, amount of weight we want to find eggs to fit
    memo - dictionary, OPTIONAL parameter for memoization (you may not need to use this parameter depending on your implementation)

    Returns: int, smallest number of eggs needed to make target weight
    """
    # TODO: Your code here
    max=target_weight+1
    dp=[]
    for i in range (max):
        dp.append(max)
    dp[0] = 0
    for i in range (0,target_weight+1,1):
        for j in range(len(egg_weights)):
            if egg_weights[j]<=i:
                dp[i]=min(dp[i], dp[i - egg_weights[j]] + 1)
    return dp[len(dp)-1]
    pass


# EXAMPLE TESTING CODE, feel free to add more if you'd like
if __name__ == '__main__':
    egg_weights = (1, 5, 10, 25)
    n = 30
    print("Egg weights = (1, 5, 10, 25)")
    print("n =",n)
    print("Expected ouput: 2 (1 * 25+1*5  = 30)")
    print("Actual output:", dp_make_weight(egg_weights, n))
    print()
