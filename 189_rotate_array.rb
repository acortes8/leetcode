def rotate(nums, k)
  k %= nums.length
  reverse(nums, 0, nums.length - 1) 
  reverse(nums, 0, k - 1) 
  reverse(nums, k, nums.length - 1) 
end

def reverse(nums, left_idx, right_idx)
  while left_idx < right_idx
    nums[left_idx], nums[right_idx] = nums[right_idx], nums[left_idx]
    left_idx += 1
    right_idx -= 1
  end
end