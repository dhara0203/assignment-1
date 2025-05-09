def get_unique_values(lst):
    return list(set(lst))
my_list = [11, 22, 22, 33, 44, 44, 55]
unique_values = get_unique_values(my_list)
print("Unique values:", unique_values)