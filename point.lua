require"math"

Point = {}
Point.__index = Point

function Point.new(x, y)
  local instance = setmetatable({}, Point)
  instance.x = x
  instance.y = y
  return instance
end

function Point:displayPoint()
  print("(" .. self.x .. ", " .. self.y .. ")")
end

function Point:__sub(p)
  return (math.sqrt(((p.x - self.x)^2) + ((p.y - self.y)^2)))
end

function Point:__eq(p)
  if self.x == p.x and self.y == p.y then
    return true
  else
    return false
  end
end

function Point:__neq(p)
  if self.x == p.x and self.y == p.y then
    return false
  else
    return true
  end
end

function Point:__div(p)
  return Point.new(((self.x + p.x)/2), ((self.y + p.y)/2))
end

Point1 = Point.new(5, 2)
Point2 = Point.new(2, 4)
Point3 = Point.new(5, 2)

Point1:displayPoint()
print(Point1 - Point2)
print(Point1 == Point2)
print(Point1 == Point3)

print(Point1 ~= Point2)
print(Point1 ~= Point3)

NewPoint = Point1 / Point2

NewPoint:displayPoint()
