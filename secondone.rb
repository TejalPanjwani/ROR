class Abc
    
    @@ele={" Tv"=>10000," Tablets"=> 5000," Moblie" =>2000," Laptop "=>  45000," Charger" => 300}
    @@apl={" Home"=>{" Fan"=>1500," Air Cooler"=>8000," Room Heater"=>2500," Water Heater"=>3800," water Purifier"=>8600," iron"=>599," Sewing Machine"=>10000},
           " Kitchen"=>{" Mixer Geinder"=>1900," Toaster"=>3300," Oven"=>9500," Sandwich Maker"=>1800," Juicer"=>600," Hand Blender"=>599," Rice & Pasta Cooker"=>1000," Coffee Machine"=>4500},
           " Electronics"=> @@ele}
    @@cloth={" For Men's"=>{" Shirt"=>500," T-shirt"=>300," Suits"=>4500," Jeans"=>3000," Jackets"=>3600},
             " For Women's"=>{" Tops"=>700," Kurti"=>250," Dress"=>3500," Jeans"=>3000," Dupatta"=>360}}
    @@footw={" For Men's"=>{" Casual Shoes"=>1700," Formal Shoes"=>650, " Sport Shoes"=>500," Socks"=>100},
             " For Women's"=>{" Flat"=>1700, " Heel"=>2650," Casual Shoes"=>800}}
    @@toy={" Soft Toy"=>400," Toy Vehical"=>2000," Musical Toy"=>3100," Devlopment Toy"=>630}
    @@cat=[@@ele,@@apl,@@cloth,@@footw,@@toy]
    @@finalArray=[]
    @@finalToPrintArray=[]

    def start()
        show=[" Electronics"," Appliance"," Clothing"," Footwear"," Toys"," Exit"]
        for i in 0...show.length
            printf "%d %s",i+1,show[i]
            puts
        end
        puts " Enter Number: "
        num = gets.to_i 
        if num == 6
            exit
        else
            ans = @@cat[num-1]
            cat = show[num-1]
            display(ans,cat)
        end
    end

    def display(ans,cat)
        cat = cat
        
        arr = ans.values
        if arr[0].kind_of?(Hash)
            checkforhash(ans,cat)
        else
            print(ans,cat)
        end
    end
             
    def checkforhash(ans,cat)
        finalcat = cat
        m = 0
        keysis = ans.keys
        valueis = ans.values
        for i in 0...keysis.length
            printf " %d %s" ,i+1,keysis[i]
            puts
        end
        puts " Enter number: "
        num = gets.to_i
        finalSubCat = keysis[num-1]
        hashis = valueis[num-1]
        hashis.each do |key,value|
            m = m + 1
            printf  " %d %-20s %s" ,m,key,value
            puts
        end
        puts "Enter number"
        num1 = gets.to_i
        finalkey = hashis.keys[num1-1]
        finalvalue = hashis.values[num1-1]
        puts " Quantity: "
        finalqun = gets.to_i
        puches(finalcat,finalSubCat,finalkey,finalvalue,finalqun)
        puts " Do you want to continue in this section: "
        ans1 = gets
        if ans1[0].downcase == "y"
            checkforhash(ans,cat)
        else
            bill()
        end 
    end

    def print(ans,cat)
        finalcat = cat
        finalSubCat = "-"
        m = 0
        ans.each do |key,value|
            m = m + 1
            printf  " %d %-20s %s" ,m,key,value
            puts
        end
        puts "Enter number"
        num1 = gets.to_i
        finalkey = ans.keys[num1-1]
        finalvalue = ans.values[num1-1]
        puts " Quantity: "
        finalqun = gets.to_i
        puches(finalcat,finalSubCat,finalkey,finalvalue,finalqun)
        puts " Do you want to continue in this section: "
        ans1 = gets
        if ans1[0].downcase == "y"
            print(ans,cat)
        else
            bill()
        end
    end 

    def puches(finalcat,finalSubCat,finalkey,finalvalue,finalqun)
        #@@count = @@count + 1
        total = finalvalue * finalqun
        finalHash = {"Catagories"=>finalcat,"Sub catagories"=>finalSubCat,"Product"=>finalkey,"Quantity"=>finalqun,"Price"=>total}
        @@finalArray.push(finalHash)
        #puts @@finalArray
    end

    def bill()
        puts " Do you want to continue: "
        ans1 = gets
        if ans1[0].downcase == "y"
            start()
        else
            total = 0
            puts
            puts "----------------------------------------------------------------------------"
            printf  "%-15s %-12s %-10s %-10s %-15s" ," Catagories","Sub catagories"," Poducts"," Quantity"," Price"
            puts
for i in 0...@@finalArray.length
    puts @@finalArray[i]["Catagories"]
end
puts 
puts 
for i in 0...@@finalArray.length
    
    if @@finalToPrintArray.length==0
        @@finalToPrintArray.push(@@finalArray[i])
        
    else
        for j in 0..@@finalToPrintArray.length-1
            
                if @@finalArray[i]["Catagories"] == @@finalToPrintArray[j]["Catagories"]
                 puts "yes" 
                        if @@finalArray[i]["Sub catagories"] == @@finalToPrintArray[j]["Sub catagories"] && @@finalArray[i]["Product"] == @@finalToPrintArray[j]["Product"]
                            @@finalToPrintArray[j]["Quantity"] = @@finalArray[i]["Quantity"] + @@finalToPrintArray[j]["Quantity"]
                            @@finalToPrintArray[j]["Price"] = @@finalArray[i]["Price"] + @@finalToPrintArray[j]["Price"]
                            @@finalToPrintArray.delete(@@finalToPrintArray[j+1])
                                  
                        end
                 else
                 puts "heyyyyyyy"
                 @@finalToPrintArray.push(@@finalArray[i])
                 puts @@finalToPrintArray
                 end
        end
    end
end

puts
for i in 0...@@finalToPrintArray.length
    total = total + @@finalToPrintArray[i]["Price"]
    printf  "%-15s %-12s %-12s %-15s %-20s" ,@@finalToPrintArray[i]["Catagories"],@@finalToPrintArray[i]["Sub catagories"],@@finalToPrintArray[i]["Product"],@@finalToPrintArray[i]["Quantity"],@@finalToPrintArray[i]["Price"]
    puts
end
                puts "-------------------------------------------------------------------------"
                printf "Total is: %d ",total
                puts "-------------------------------------------------------------------------"
        end

    end
end

a=Abc.new()
a.start
