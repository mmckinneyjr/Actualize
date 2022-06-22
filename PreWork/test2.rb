def recover_secret(triplets)
    secret=[]


    for i in triplets

        x = i[0]
        y = i[1]
        z = i[2]

        n = 2

        secret.insert(0,x) unless secret.include?(x)
        secret.insert(secret.index(x)+1,y) unless secret.include?(y)
        
        # if secret.include?(y) && secret.index(y) < secret.index(x)  
        #     secret.insert(secret.index(x)+1, y)
        #     secret.pop(secret.index(y))
            
        # end


        #secret.insert(secret.index(y)+1,z) unless secret.include?(z)

   


        # if !(secret.include?(x))
        #     secret.insert(0,x)
        # end

        # if y not in secret
        #     secret.insert(secret.index(x)+1,y)
        # end

        # if y in secret and secret.index(y) lessthan secret.index(x)
        #     secret.pop(secret.index(y))
        #     secret.insert(secret.index(x) + 1, y)
        # end

        # if z not in secret
        #     secret.insert(secret.index(y)+1,z)
        # end

        # if z in secret and secret.index(z) lessthan secret.index(y)
        #     secret.pop(secret.index(z))
        #     secret.insert(secret.index(y) + 1, z)
        # end



       
    end

    return  secret.join()
end





secret_1 = "whatisup"
triplets_1 = [
  ['t','u','p'], #               u
  ['w','h','i'], # w
  ['t','s','u'], #    t
  ['a','t','s'], #   a
  ['h','a','p'], #                   p
  ['t','i','s'], #     i
  ['w','h','s']  #  h
]


puts recover_secret(triplets_1)#, secret_1)


