UnmoeglichesQuiz = {}
UnmoeglichesQuiz.__index = UnmoeglichesQuiz

function UnmoeglichesQuiz:New()
    local obj = {}

    setmetatable(obj, self)

    obj.currentQuestion = 1
    obj.score = 0
    obj.answers = {}

    return obj
end

function UnmoeglichesQuiz:GetQuestion()
    return UnmoeglichesQuizData.Questions[self.currentQuestion]
end

function UnmoeglichesQuiz:PrepareQuestion()
    local correctSide = math.random(1, 2) == 1 and "A" or "B"

    self.activeQuestion = {
        data = self:GetQuestion(),
        correctSide = correctSide
    }

    return self.activeQuestion
end

function UnmoeglichesQuiz:Answer(side)
    local correct = side == self.activeQuestion.correctSide

    if correct then
        self.score = self.score + 1
    end

    table.insert(self.answers, {
        question = self.activeQuestion.data.question,
        correct = correct,
        correctSide = self.activeQuestion.correctSide
    })

    return correct
end

function UnmoeglichesQuiz:NextQuestion()
    self.currentQuestion = self.currentQuestion + 1
end

function UnmoeglichesQuiz:IsFinished()
    return self.currentQuestion > #UnmoeglichesQuizData.Questions
end