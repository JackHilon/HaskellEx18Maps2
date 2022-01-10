import Data.List
import System.IO


myList = [1, 2, 3, 4]::[Int]

add4ToInt::Int -> Int
add4ToInt x = x + 4

add4ToListItemsUsingMap::[Int] -> [Int]
add4ToListItemsUsingMap list = map add4ToInt list

add4ToListItems::[Int] -> [Int]
add4ToListItems[] = []
add4ToListItems(x:xs) = add4ToInt x : add4ToListItems xs



main = do
    print(add4ToListItemsUsingMap myList)
    print(add4ToListItems myList)



