class Array
  def my_uniq
    self.reduce([]) do |uniqs, el|
      unless uniqs.include?(el)
        uniqs.push(el)
      else
        uniqs
      end
    end
  end

  def two_sum
    pairs = []

    
    i = 0
    while i < self.length - 1
      j = i + 1
      while j < self.length
        pairs << [i ,j] if self[i] + self[j] == 0
        j += 1
      end 
      i += 1
    end  
    return pairs.my_uniq
  end
  
  def my_transpose #[[1,2],[3,4],[5,6]]
    transpose_array = Array.new(self[0].length) { [] }
    
    (0...self.length).each do |row_idx| #self.length == 3
      (0...self[row_idx].length).each do |col_idx| #self[row_idx].length == 2
        transpose_array[col_idx][row_idx] = self[row_idx][col_idx]
      end
    end
    transpose_array
  end
end

