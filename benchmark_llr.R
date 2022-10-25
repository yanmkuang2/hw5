library(microbenchmark)

# get the data
data(french_fries, package = 'reshape2')
french_fries <- na.omit(french_fries)

# input data
x <- french_fries$potato
y <- french_fries$buttery

# space along which to smooth
z <- seq(0, 15, length.out = 100)

# run smoothing
fits <- llr(z = z, x = x, y = y, omega = 2)

# plot the data and the smoother
plot(x, y)
lines(z, fits, col = 'red')


microbenchmark(
  llr(z = z, x = x, y = y, omega = 2)
)


