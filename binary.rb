

Only you can see this message
This story's distribution setting is on. You're in the Partner Program, so this story is eligible to earn money. Learn more
Binary Search
Jennica Stiehl
Jennica Stiehl
Sep 9 · 2 min read

An Algorithm
Let’s say you are looking up the word ‘jade’ in the dictionary. Would it make more sense to start in the ‘a’ section and check each section or start in the middle and search until you find the ‘j’ section? Probably the middle, right? Yes.
So, a binary search cuts the dictionary in half on each iteration or time you look until the word is found. So, if you were looking for a number between 1 and 1024, you would look 10 times, instead of the 1024 (if your number was the last possible number). It is important to note that a binary search only works on an ordered list.
Examples
Here is an example in Ruby:
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
