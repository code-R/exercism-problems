"""Calculate the Hamming difference between two DNA strands."""


def distance(strand_a, strand_b):
    """Given two strands, it calculates distance."""
    if len(strand_a) != len(strand_b):
        raise ValueError()

    merged_strands = zip(strand_a, strand_b)
    res = [x[0] for x in merged_strands if x[0] != x[1]]

    return len(res)
