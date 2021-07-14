struct Point
    x::Int
    y::Int
end

find_slope(p1, p2) = (p2.y - p1.y) / (p2.x - p1.x)
part(x) = round(x), ceil(x)

function find_y(x, known_x)
    if round(x) == x
        return known_x[x]
    end
end

p1 = Point(2, 3)
p2 = Point(5, 6)

print(find_slope(p1, p2))
