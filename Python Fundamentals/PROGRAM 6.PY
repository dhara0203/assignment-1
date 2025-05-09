def replace_not_poor_with_good(text):
    not_index = text.find('not')
    poor_index = text.find('poor')
    if not_index != -1 and poor_index != -1 and not_index < poor_index:
        return text[:not_index] + 'good' + text[poor_index + 4:]
    return text
input_string = "The movie is not that bad, actually it's quite poor."
result = replace_not_poor_with_good(input_string)
print("Result:", result)
