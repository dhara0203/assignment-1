def find_second_smallest(numbers):
    if len(numbers) < 2:
        return None
    unique_numbers = list(set(numbers))
    if len(unique_numbers) < 2:
        return None  
    unique_numbers.sort()
    return unique_numbers[1]
my_list = [20, 11, 99, 63, 66, 86]
second_smallest = find_second_smallest(my_list)

if second_smallest is not None:
    print("The second smallest number is:", second_smallest)
else:
    print("Could not find a second smallest number.")
