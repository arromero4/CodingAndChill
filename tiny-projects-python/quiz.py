#Dictionary that stores questions and answers
#have a variable that tracks the score of the player
#loop through the dictionary using the key value pairs
#display each question to the user and allow them to answer
#tell them if they are right or wrong
#show the final result when quiz is completed

quiz = {
    "question1": {
        "question": "What is the capital of France?",
        "answer": "Paris"
    },
    "question2": {
        "question": "What is the capital of Germany?",
        "answer": "Berlin"
    },
    "question3": {
        "question": "What is the capital of Italy?",
        "answer": "Rome"
    },
    "question4": {
        "question": "What is the capital of Spain?",
        "answer": "Madrid"
    },
    "question5": {
        "question": "What is the capital of England?",
        "answer": "London"
    },
    "question6": {
        "question": "What is the capital of Portugal?",
        "answer": "Lisbon"
    },
    "question7": {
        "question": "What is the capital of Switzerland?",
        "answer": "Bern"
    },
    "question8": {
        "question": "What is the capital of Austria?",
        "answer": "Vienna"
    },
    "question9": {
        "question": "What is the capital of Sweden?",
        "answer": "Stockholm"
    },
    "question10": {
        "question": "What is the capital of Norway?",
        "answer": "Oslo"
    },
}

score = 0

for key, value in quiz.items():
    print(value['question'])
    answer = input("Answer: ")

    if answer.lower() == value['answer'].lower():
        print("Correct!")
        score += 1
        print(f"Your score is {score}")
    else:
        print("Wrong!")
        print(f"The answer is {value['answer']}")