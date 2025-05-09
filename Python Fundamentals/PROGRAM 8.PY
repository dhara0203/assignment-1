def contains_sublist(main_list, sub_list):
    sub_len = len(sub_list)
    for i in range(len(main_list) - sub_len + 1):
        if main_list[i:i+sub_len] == sub_list:
            return True
    return False
main = [1, 2, 3, 4, 5]
sub = [3, 4]

if contains_sublist(main, sub):
    print("The list contains the sublist.")
else:
    print("The list does NOT contain the sublist.")