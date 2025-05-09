def sort_dict_by_value(d, reverse=False):
    return dict(sorted(d.items(), key=lambda item: item[1], reverse=reverse))
my_dict = {'apple': 3, 'banana': 1, 'cherry': 2}
asc_sorted = sort_dict_by_value(my_dict)
print("Ascending by value:", asc_sorted)
desc_sorted = sort_dict_by_value(my_dict, reverse=True)
print("Descending by value:", desc_sorted)
