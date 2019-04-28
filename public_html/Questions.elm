module Questions exposing (..)

type alias Question =
    { question : String
    , answers : List String
    , correctAnswer : String
    }

ladyGagaQuestion : Question
ladyGagaQuestion = 
    { question = "Which singer's real name is Stefani Joanne Angelina Germanotta?"
    , answers = ["Pink", "Lady Gaga", "Rihanna", "Ariana Grande"]
    , correctAnswer = "Lady Gaga"
    }

idiotQuestion1 : Question
idiotQuestion1 = 
    { question = "Who painted the Mona Lisa?"
    , answers = ["You", "Me", "A Painter", "Da Vinci"]
    , correctAnswer = "Da Vinci"}

planetQuestion : Question
planetQuestion = 
    { question = "Which of the planets is closest to the sun?"
    , answers = ["Earth", "Jupiter", "Mercury", "Mars"]
    , correctAnswer = "Mercury"
    }

greekQuestion : Question
greekQuestion = 
    { question = "According to Greek mythology who was the first woman on earth?"
    , answers = ["Aphrodite", "Artemis", "Athena", "Pandora"]
    , correctAnswer = "Pandora"
    }

femalePMQuestion : Question
femalePMQuestion = 
    { question = "In 1960, which country became the first in the world to have a female Prime Minister?"
    , answers = ["Sri Lanka", "England", "United States", "Brazil"]
    , correctAnswer = "Sri Lanka"
    }

idiotQuestion2 : Question
idiotQuestion2 = 
    { question = "How many dots are there on two dice?"
    , answers = ["30", "45", "32", "42"]
    , correctAnswer = "42"}

idiotQuestion3 : Question
idiotQuestion3 = 
    { question = "When did the Second World War end?"
    , answers = ["1950", "1945", "1943", "1942"]
    , correctAnswer = "1945"}

idiotQuestion4 : Question
idiotQuestion4 = 
    { question = "Who said E=mc2?"
    , answers = ["A Genius", "An Idiot", "You Did?", "Einstein"]
    , correctAnswer = "Einstein"}

idiotQuestion5 : Question
idiotQuestion5 = 
    { question = "Which is the largest ocean?"
    , answers = ["Indian", "Atlantic", "Pacific", "All are similar"]
    , correctAnswer = "Pacific"}

question : List Question
question = [ ladyGagaQuestion
           , planetQuestion
           , greekQuestion
           , femalePMQuestion
           , idiotQuestion5
           , idiotQuestion4
           , idiotQuestion3
           , idiotQuestion2
           , idiotQuestion1
           ]