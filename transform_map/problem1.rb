log = [
  {time: 201201, x: 2},
  {time: 201201, y: 7},
  {time: 201201, z: 2},
  {time: 201202, a: 3},
  {time: 201202, b: 4},
  {time: 201202, c: 0}
]

log.reduce({}) do |memo, element|
  time = element[:time]
  key = element.keys[1]
  memo.tap do |obj|
    unless obj.key? time
      obj[time] = { time: element[:time] }
    end
    obj[time][key] = element[key]
  end
end.values
