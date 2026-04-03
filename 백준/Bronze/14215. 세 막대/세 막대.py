x, y, z = map(int, input().split())

max = max(x,y,z)
tmp = x+y+z-max

if max < tmp: 
    print(x+y+z)
else: 
    max = tmp-1
    print(max+tmp)