def majority_element(nums)
  count = 0
  candidate = nil

  nums.each do |num|
    if count == 0
      candidate = num
    end

    count += (num == candidate ? 1 : -1)
  end

  candidate
end