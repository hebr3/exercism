def is_leap_year(x):
    if (0 == x % 400):
        return True
    if (0 == x % 100):
        return False
    if (0 == x % 4):
        return True
    else:
        return False
