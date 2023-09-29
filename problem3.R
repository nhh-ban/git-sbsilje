# Github assignment - Problem 3

# Load the ggplot2-library
library(ggplot2)

# Read the galaxies data file from problem 2
galaxies <- read_csv("galaxies.csv")

# Create a histogram of galaxy sizes (a_26)
plot <- ggplot(galaxies, aes(x = a_26)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black") +
  labs(title = "Distribution of Galaxy Sizes",
       x = "Galaxy Size (kpc)",
       y = "Frequency") +
  theme_minimal()

# Save the plot as a PNG-file
ggsave("prob3_histogram.png", plot)

# The histogram, which represents the distribution of galaxy sizes in the data set,
# shows that there is a lack of small galaxies on the very left side of the histogram.
# This indicates an under-representation of smaller objects in the galaxy. 
# A likely explanation for this is that telescopes and observation methods may 
# have limitations in detecting smaller galaxies at greater distances.
# Additionally, the data collection process itself, including selection criteria,
# could introduce biases in the sample. 
