sentence = " hello my name is dhara"
words = sentence.lower().split()
word_count = {}
for word in words:
    if word in word_count:
        word_count[word] += 1
    else:
        word_count[word] = 1
        print("word occurrences:")
        for word, count in word_count.items():
            print(f"{word}:{count}")
            
