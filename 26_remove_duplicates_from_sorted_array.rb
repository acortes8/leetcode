def remove_duplicates(nums)
  return nums.length if nums.length <= 1

  insert_pos = 1

  (1...nums.length).each do |scan_pos|
    if nums[scan_pos] != nums[scan_pos - 1]
      nums[insert_pos] = nums[scan_pos]
      insert_pos += 1
    end
  end

  insert_pos
end