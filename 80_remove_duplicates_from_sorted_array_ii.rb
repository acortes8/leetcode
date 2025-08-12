def remove_duplicates(nums)
  insert_pos = 0

  nums.each do |scan_pos|
    if insert_pos < 2 || nums[scan_pos] != nums[insert_pos - 2]
      nums[insert_pos] = scan_pos
      insert_pos += 1
    end
  end

  insert_pos
end