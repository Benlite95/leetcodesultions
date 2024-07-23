def my_pow(x, n)
    total = 1
    abs_num = n.abs
    while abs_num > 0
        total *= x if abs_num.odd?
        x *= x
        abs_num /= 2
    end
    n > 0 ? total : 1/total
end