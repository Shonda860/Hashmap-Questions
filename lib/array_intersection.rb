def intersection(list1, list2)
  # raise NotImplementedError, "Intersection not implemented"
  hash = {}
  list2.each do |num|
    hash[num] = true
  end

  intersect_list = []

  list1.each do |target|
    if hash[target]
      intersect_list << target
    end
  end
  return intersect_list
end
