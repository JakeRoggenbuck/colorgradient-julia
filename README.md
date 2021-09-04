# colorgradient-julia

Similar project to [colorgradient-rs](https://github.com/JakeRoggenbuck/colorgradient-rs) but in a math language

```jl
# Find the slope of two point
find_slope(x1, y1, x2, y2) = (y2 - y1) / (x2 - x1)

# Find the closest whole numbers on both sides of a x
neighbors(x) = round(x), ceil(x)

# Find the predicted value of y given a value x
function find_y(x, known_x)
    # Check if the given value is exactly one in the known list
    if round(x) == x
        return known_x[x]
    end

    left_x, right_x = neighbors(x)

    left_y = known_x[left_x]
    right_y = known_x[right_x]

    slope = find_slope(left_x, left_y, right_x, right_y)

    return left_y + (slope * (x - left_x))
end
```
