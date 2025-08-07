def merge(nums1, elements_in_nums1, nums2, elements_in_nums2)
    nums1_idx = elements_in_nums1 - 1
    nums2_idx = elements_in_nums2 - 1
    insert_pos = elements_in_nums1 + elements_in_nums2 - 1

    until nums2_idx < 0
        if nums1_idx >= 0 && nums1[nums1_idx] > nums2[nums2_idx]
            nums1[insert_pos] = nums1[nums1_idx]
            nums1_idx -= 1
        else
            nums1[insert_pos] = nums2[nums2_idx]
            nums2_idx -= 1
        end
        insert_pos -= 1
    end
end