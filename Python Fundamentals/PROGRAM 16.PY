def count_frequencies(lst):
    freq_dict = {}
    for item in lst:
        if item in freq_dict:
            freq_dict[item] += 1
        else:
            freq_dict[item] = 1
    return freq_dict
input_list = [1, 1, 1, 5, 5, 3, 1, 3, 3, 1, 4, 4, 4, 2, 2, 2, 2]
frequency_dict = count_frequencies(input_list)
for key, value in frequency_dict.items():
    print(f"{key} : {value}")
