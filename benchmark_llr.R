library(microbenchmark)

set.seed(827)
n = 15
x = rnorm(n)
y = rnorm(x + rnorm(n))
z = seq(-1, 1, length.out = 100)
omega = 1

microbenchmark(
  llr(z = z, x = x, y = y, omega = 2)
)

microbenchmark(
  llr1(z = z, x = x, y = y, omega = 2)
)

microbenchmark(
  llr2(z = z, x = x, y = y, omega = 2)
  )

