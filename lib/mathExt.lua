local mathExt = {}

--- Calculates the greatest common divisor of two numbers.
--- @param x number The first number.
--- @param y number The second number.
--- @return number The greatest common divisor.
function math.gcd(x, y)
    while y ~= 0 do
        x, y = y, x % y
    end
    return x
end

--- Calculates the least common multiple of two numbers.
--- @param a number The first number.
--- @param b number The second number.
--- @return number The least common multiple.
function math.lcm(a, b)
    return (a * b) / math.gcd(a, b)
end

--- Calculates the least common factor of two numbers.
--- @param a number The first number.
--- @param b number The second number.
--- @return number The least common factor.
function math.lcf(a, b)
    local min = math.min(a, b)
    for i = 2, min do
        if a % i == 0 and b % i == 0 then
            return i
        end
    end
    return 1  -- If no other factor is found, return 1
end

return mathExt