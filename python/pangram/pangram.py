def is_pangram(s):
    t = s.lower()
    a = 'abcdefghijklmnopqrstuvwxyz'
    for c in a:
        if (not (c in t)):
            return False
    return True
