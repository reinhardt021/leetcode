# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    found = false
    # jump to the mid row using the matrix.length / 2
    # see if the target is greater or less than the first digit
    # if less than check previous row
    # if greater than check next row
    # to find the row first
    # then search within the row
    # can just do that with a loop to find if in row
    # then find within the row
    puts "target: " + target.to_s
    if matrix.count == 0 
      return found
    end

    row = 0
    while row < (matrix.count - 1)
        puts "row: " + matrix[row].to_s
        if target < matrix[row + 1][0]
            break
        end
        row += 1
    end
    
    puts "found row index: " + row.to_s
    if row < 0
        return found
    end
    
    column = 0
    while column < matrix[row].count
        puts "item: " + matrix[row][column].to_s
        if (target == matrix[row][column])
            found = true
            break
        end
        column += 1
    end
    
    return found
end


t1 = [[1]]
r1 = search_matrix(t1, 1)
puts "test 1 pass = " + (r1 == true).to_s
t2 = [[1,3,5,7],[10,11,16,20],[23,30,34,60]] 
r2 = search_matrix(t2, 3)
puts "test 2 pass = " + (r2 == true).to_s
t3 = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]
r3 = search_matrix(t3, 13)
puts "test 3 pass = " + (r3 == false).to_s
