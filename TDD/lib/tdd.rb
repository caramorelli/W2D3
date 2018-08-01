class Array

  def uniq
    new_arr = []

    0.upto(self.length - 1) do |idx|
      new_arr << self[idx] unless new_arr.include?(self[idx])
    end
    new_arr
  end

  def two_sum
    new_arr = []
    self.each_with_index do |el, idx|
      opp_num = el * -1
      if self.include?(el * -1)
        new_arr << [idx, self.index(opp_num)].sort unless idx == self.index(opp_num)
      end
    end
    new_arr.uniq
  end

  def my_transpose
    transpose_arr = [ ]
    self.each_with_index do |row, row_idx|
      sub_arr = []
      self.each_with_index do |col, col_idx|
        sub_arr << self[col_idx][row_idx]
      end
      transpose_arr << sub_arr
    end
    transpose_arr
  end

  def stock_picker
    buy_stock = nil
    sell_stock = nil
    biggest_diff = 0

    0.upto(self.length - 1) do |i|
      (i + 1).upto(self.length - 1) do |j|
        difference = self[j] - self[i]
        if difference > biggest_diff
          buy_stock = i
          sell_stock = j
          biggest_diff = difference
        end
      end
    end

    [buy_stock, sell_stock]

  end

end
