def unzip_list_of_tuples(paired_list):
    return list(map(list, zip(*paired_list)))
zipped = [(2, 'march'), (4, 'december'), (22, 'january')]
unzipped = unzip_list_of_tuples(zipped)
print("Unzipped lists:", unzipped)