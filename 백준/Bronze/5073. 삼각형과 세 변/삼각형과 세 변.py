while True:
    sides = sorted(map(int, input().split()))
    
    if sides == [0, 0, 0]:
        break
    
    if sides[2] >= sides[0] + sides[1]:
        print("Invalid")

    elif sides[0] == sides[2]:
        print("Equilateral")

    elif sides[0] == sides[1] or sides[1] == sides[2]:
        print("Isosceles")
        
    else:
        print("Scalene")