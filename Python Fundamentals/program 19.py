def get_unique_elements(input_list):
    unique_list = []
    for item in input_list:
        if item not in unique_list:
            unique_list.append(item)
    return unique_list
original_list = [10, 22, 22, 33, 44, 44, 55, 10]
unique_list = get_unique_elements(original_list)
print("Original list:", original_list)
print("Unique elements:", unique_list)
