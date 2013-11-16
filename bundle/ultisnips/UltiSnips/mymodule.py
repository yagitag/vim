import re

def transformToClassFormat(str):
    tmp = re.sub('_([a-z])', lambda pat: pat.group(1).upper(), str)
    tmp = tmp[0].upper() + tmp[1:]
    return tmp
