#### Map list of the same widgets in Column
```
...List.generate(
                  question.options.length,
                  (index) => Option(
                  index: index,
                  text: question.options[index],
                  press: () => c.checkAns(question, index),
),
),
```
