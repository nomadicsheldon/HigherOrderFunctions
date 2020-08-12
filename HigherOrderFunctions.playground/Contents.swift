//: ## Example for forEach
/*
 // 1
 let coins = [1, 5, 2, 10, 6]

 // 2
 for coin in coins {
     print("\(coin)$", terminator: " ")
 }

 print()

 // 3
 coins.forEach { (coin) in
     print("\(coin)$", terminator: " ")
 }

 print()

 // 4
 coins.forEach { print("\($0)$", terminator: " ") }

 */

//: ## Example for map

/*
 // 1
 let coins = [1, 5, 2, 10, 6]

 // 2
 var coinsWithCurrency: [String] = []
 for coin in coins {
     coinsWithCurrency.append("\(coin)$")
 }
 print(coinsWithCurrency)

 // 3
 let coinsWithCurrencyUsingMap = coins.map { (coin) -> String in
     "\(coin)$"
 }
 print(coinsWithCurrencyUsingMap)

 // 4
 let coinsWithCurrencyUsingMap_shortSyntax = coins.map { "\($0)$" }
 print(coinsWithCurrencyUsingMap_shortSyntax)
 */


//: ## Example for compactMap

/*
 // 1
 let coins = ["1", "5", "$", "10", "6"]

 // 2
 var validCoins: [Int] = []
 for coin in coins {
     if let coin = Int(coin) {
         validCoins.append(coin)
     }
 }
 print(validCoins)

 // 3
 let validCoinsUsingCompactMap = validCoins.compactMap { coin in
     Int(coin)
 }
 print(validCoinsUsingCompactMap)

 // 4
 let validCoinsUsingCompactMap_shortSyntax = coins.compactMap { Int($0) }
 print(validCoinsUsingCompactMap_shortSyntax)
 */

//: ## Example for flatMap

/*
 // 1
 let arrayOfCoins = [[1, 5, 2, 10, 6],
                     [2, 7, 4, 10, 15]]

 // 2
 let arrayOfCoin = arrayOfCoins.flatMap { (coins) in
     coins
 }
 print(arrayOfCoin)

 // 3
 let arrayOfCoin_ShortSyntax = arrayOfCoins.flatMap { $0 }
 print(arrayOfCoin_ShortSyntax)
 */

//: ## Example for filter

/*
 // 1
 let coins = [1, 5, 2, 10, 6, 2, 7, 4, 10, 15]

 // 2
 let coinsWithValueLessThanSix = coins.filter { (coin) -> Bool in
     coin < 6
 }
 print(coinsWithValueLessThanSix)

 // 3
 let coinsWithValueLessThanSixShortSyntax = coins.filter { $0 < 6 }
 print(coinsWithValueLessThanSixShortSyntax)

 */

//: ## Example for reduce

/*
 // 1
 let coins = [1, 5, 2, 10, 6, 2, 7, 4, 10, 15]

 // 2
 let sumOfCoins = coins.reduce(0) { (result, coin) -> Int in
     result + coin
 }
 print(sumOfCoins)

 // 3
 let sumOfCoinsShortSyntax = coins.reduce(0, { $0 + $1 })
 print(sumOfCoinsShortSyntax)
 */

//: ## Example for sort

/*
 // 1
 var coins = [1, 5, 2, 10, 6, 2, 7, 4, 10, 15]

 // 2

 let sortCoins = coins.sorted { (a, b) -> Bool in
     a > b
 }

 // 3
 coins.sort { (a, b) -> Bool in
     a > b
 }

 print(sortCoins)
 print(coins)
 */

// 1
var coins = [1, 5, 2, 10, 6, 2, 7, 4, 10, 15]

// 2

let sortCoins = coins.sorted { $0 > $1 }

// 3
coins.sort { $0 > $1 }

print(sortCoins)
print(coins)


