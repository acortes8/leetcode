def jump(nums)
  jumps = 0
  farthest = 0
  reach = 0

  (0...nums.length - 1).each do |i|
    farthest = [farthest, i + nums[i]].max

    if i == reach
      jumps += 1
      reach = farthest
    end
  end

  jumps
end