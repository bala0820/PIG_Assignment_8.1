A = LOAD '/home/acadgild/Desktop/Inputdata/wordcount.txt' AS (line);

word = foreach A generate flatten(TOKENIZE(line)) as wordcount;

group_word = group word by wordcount;

occ = foreach group_word generate group, COUNT(word);
