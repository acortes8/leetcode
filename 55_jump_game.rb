def can_jump(nums)
  max_reach = 0

  nums.each_with_index do |num, i|
    return false if i > max_reach
    max_reach = [max_reach, i + num].max
  end

  true
end