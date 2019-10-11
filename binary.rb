class Search
def binary_search(list, item)
    low = 0
    high = list.length-1
    loop do
        mid = (low + high)
        guess = list[mid]
        if guess == item
            return mid
        elsif guess > item
              high = mid - 1
        elsif guess < item
              low = mid - 1
        else
        return nil
        end
        break if list.length <= 1
      end
    end
  end
example_list = [1,2,3,4,5,6,7,8]
new_search = Search.new
p new_search.binary_search(example_list, 7)
# 6
