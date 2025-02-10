install.packages("primes", repos= "https://cran.rstudio.com/")
library(primes)

prime.numbers <- generate_primes(max = 100)



prime.products <- c()

if (length(prime.numbers) > 1) {
  for (i in 1:(length(prime.numbers) - 1)) {  
    for (j in (i+1):length(prime.numbers)) {  
      product <- prime.numbers[i] * prime.numbers[j]
      
      if (!is.na(product) && product < 100) {  
        prime.products <- c(prime.products, product)
      }
    }
  }
}

prime.products <- sort(prime.products)


given.numbers <- c( 6, 10, 14, 15, 21,
                    22, 26, 33, 34, 35,
                    38, 39, 46, 51, 55,
                    57, 58, 62, 65, 69,
                    75, 77, 82, 85, 86,
                    87, 91, 93, 94, 95)

incorrect_number <- setdiff(given.numbers, prime.products)  

correct_number <- setdiff(prime.products, given.numbers)  

cat("Incorrect Number in Table:", incorrect_number, "\n")

cat("Correct Number to Replace It:", correct_number, "\n")
