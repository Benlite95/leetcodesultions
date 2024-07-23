def merge(nums1, m, nums2, n)
    nums1_index = 0
    nums2_index = 0
    n.times do nums1.pop() end
    while nums1_index <= m + n - 1 && nums2[nums2_index]
        if !nums1[nums1_index] || nums1[nums1_index] > nums2[nums2_index] 
            nums1.insert(nums1_index, nums2[nums2_index])
            nums2_index += 1
        end 
        nums1_index += 1   
    end 
    nums1 
end