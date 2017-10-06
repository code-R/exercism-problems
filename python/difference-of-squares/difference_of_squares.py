"""
Difference of squares.

   Find the difference between the square of the sum and the
   sum of the squares of the first N natural numbers.
"""


def square_of_sum(num):
    """Square of the sum."""
    sum_of_n = num * (num + 1) / 2
    return sum_of_n ** 2


def sum_of_squares(num):
    """Sum of the squares."""
    return num * (num + 1) * (2 * num + 1) / 6


def difference(num):
    """Difference of squre of sum and sum of sqaures."""
    return square_of_sum(num) - sum_of_squares(num)
