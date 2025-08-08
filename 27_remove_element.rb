def remove_element(nums, val)
  insert_pos = 0

  nums.each do |num|
    if num != val
      nums[insert_pos] = num
      insert_pos += 1
    end
  end

  insert_pos
end