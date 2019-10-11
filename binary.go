package main
import "fmt"
func search(n int, group []int) bool {
  low := 0
  high := len(group) - 1

  for low <= high {
    median := (low + high) / 2

    if group[median] < n {
      low = median + 1
    }else{
      high = median - 1
    }
  }
  if low == len(group) || group[low] != n {
    return false
  }
  return true
}
func main() {
  items := []int{1,2,5,6,23,21,45,76,211,125}
  fmt.Println(search(6,items))
}
