def max_area(height)
    highest_amount = 0
    begining_number = 0
    last = height.count - 1
    while begining_number <  last do 
        highest_amount = [[height[begining_number],height[last]].min * (last - begining_number),highest_amount].max
        height[begining_number] > height[last] ? last -=1 : begining_number +=1
    end
    highest_amount
end