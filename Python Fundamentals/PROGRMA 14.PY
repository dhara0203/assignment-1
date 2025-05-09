def highest_three_values(d):
    sorted_items = sorted(d.items(), key=lambda item: item[1], reverse=True)
    return sorted_items[:3]
my_dict = {'apple': 50, 'banana': 30, 'cherry': 70, 'date': 40, 'elderberry': 90}
top_3 = highest_three_values(my_dict)
print("Highest 3 values:", top_3)
