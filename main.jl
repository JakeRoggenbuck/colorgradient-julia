struct Point
    x::Int
    y::Int
end

# Find the slope of two point
find_slope(p1, p2) = (p2.y - p1.y) / (p2.x - p1.x)

# Find the closest whole numbers on both sides of a x
neighbors(x) = round(x), ceil(x)

# Find the predicted value of y given a value x
function find_y(x, known_x)
    # Check if the given value is exactly one in the known list
    if round(x) == x
        return known_x[x]
    end
end

p1 = Point(2, 3)
p2 = Point(5, 6)

println(find_slope(p1, p2))
println(neighbors(4.5))
