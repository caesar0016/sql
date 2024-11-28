import matplotlib.pyplot as plt

# Data
fruits = ['Apples', 'Bananas', 'Cheries', 'Dates', 'Elderberries']
quantities = [10, 15, 7, 5, 3]

# Create bar chart
plt.figure(figsize=(10, 6))
plt.bar(fruits, quantities, color=['red', 'yellow', 'pink', 'brown', 'purple'])

# Add titles and labels
plt.title('Quantity of Different Fruits')
plt.xlabel('Fruits')
plt.ylabel('Quantity')

# Show plot
plt.show()
