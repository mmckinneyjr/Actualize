# ###### Exercise 1 #####

# def linear_search(sorted_array, desired_item)    
#     i = 0
#     while i < sorted_array.size
#         if sorted_array[i] == desired_item
#             return i
#         end
#         i += 1
#     end  
# end
  
# p linear_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 18)
# p linear_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 6)
# p linear_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 37)
# p linear_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 9)





###### Exercise 2 #####
def binary_search(sorted_array, desired_item)
    
    i = (sorted_array.size / 2)

    while i > -1 || i < sorted_array.size - 1

        if sorted_array[i] == desired_item
            return i
        
        elsif desired_item < sorted_array[i]       
            while i > -1
                if sorted_array[i] == desired_item && i >= 0
                   return i    
                elsif i < 1
                     return nil
                end
            i -= 1
            end
        
        elsif desired_item > sorted_array[i]
            while i < sorted_array.size
                if sorted_array[i] == desired_item && i < sorted_array.size
                    return i
                elsif i > sorted_array.size
                    return nil
                end
                i += 1 
            end  
         end
    end 
    
end


p binary_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 18)
p binary_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 6)
p binary_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 37)
p binary_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 9)

# 4
# 1
# 7
# nil