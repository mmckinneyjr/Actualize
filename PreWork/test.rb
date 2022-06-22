# def sum_pairs(ints, s)
#     int1 = nil
#     int2 = nil

#     i = 0
#     while (i < ints.size - 1) && !(int1.to_i+int2.to_i == s) 
 
#         int1 = ints[i]
#         int1 != nil &&  int2 != nil ? int1 = ints[i+1] : int1 = ints[i]
        
        
        
#         x = 1 
        
#         while (x < ints.size) && !(int1.to_i+int2.to_i == s) && int1 != s 
#             int2 = ints[x]
#             x+=1
#            #p "sum: #{int1} + #{int2} = #{int1+int2}: #{int1+int2 == s}"
#         end
#         i+=1
#     end

#     return p int1.to_i+int2.to_i == s ? [int1, int2] : nil
       
       
# end


def sum_pairs(ints, s)
    int1 = nil
    int2 = nil
    save = [nil, nil, nil]

    i = 0
 
    while i < ints.size - 1
 
        int1 = ints[i]
       
        x = 1 + i
    
        while x < ints.size
            int2 = ints[x]
            

           p "sum: #{int1} + #{int2} = #{int1+int2}: #{int1+int2 == s}"
           if (ints[i].to_i + ints[x].to_i == s) 
            
            if (save[2] ==  nil) || (ints[i].to_i + ints[x].to_i > save[2])
            
            p "sum2: #{int1} + #{int2} = #{int1+int2}: #{int1+int2 == s}"
            
                save[0] = ints[i]
                save[1] = ints[x]
                save[2] = x - i
                
                p save[2]
            end
        end
           x+=1
        end
      i+=1
    end
    p save
    return save[2] == s ? [save[0], save[1]] : nil
       
       
end





l = [1, 2, 3, 4, 1, 0]
l0= [10, 5, 2, 3, 7, 5] 
l1= [1, 4, 8, 7, 3, 15]
l2= [1, -2, 3, 0, -6, 1]
l3= [20, -13, 40]
l4= [1, 2, 3, 4, 1, 0]
l5= [10, 5, 2, 3, 7, 5]
l6= [4, -2, 3, 3, 4]
l7= [0, 2, 0]
l8= [5, 9, 13, -3]

#  sum_pairs(l, 2) == [1, 1]
p sum_pairs(l0, 10) == [3, 7]
#  sum_pairs(l1, 8) == [1, 7]#, "Basic: ["+l1.join(", ")+"] should return [1, 7] for sum = 8"
#  sum_pairs(l2, -6) == [0, -6]#, "Negatives: ["+l2.join(", ")+"] should return [0, -6] for sum = -6"
#  sum_pairs(l3, -7) == nil#, "No Match: ["+l3.join(", ")+"] should return nil for sum = -7"
# #p sum_pairs(l4, 2) == [1, 1]#, "First Match From Left: ["+l4.join(", ")+"] should return [1, 1] for sum = 2 "
# p sum_pairs(l5, 10) == [3, 7]#, "First Match From Left REDUX!: ["+l5.join(", ")+"] should return [3, 7] for sum = 10 "
# p sum_pairs(l6, 8) == [4, 4]#, "Duplicates: ["+l6.join(", ")+"] should return [4, 4] for sum = 8"
# p sum_pairs(l7, 0) == [0, 0]#, "Zeroes: ["+l7.join(", ")+"] should return [0, 0] for sum = 0"
# p sum_pairs(l8, 10) == [13, -3]#, "Subtraction: ["+l8.join(", ")+"] should return [13, -3] for sum = 10"
