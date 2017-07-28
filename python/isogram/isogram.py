def is_isogram(s):
    t = s.lower()
    t = t.replace(" ","")
    t = t.replace("-","")
    l = []
    for c in t:
        l.append(c)
    t2 = set(t)
    if (len(t) == len(t2)):
        return True
    else:
        return False
