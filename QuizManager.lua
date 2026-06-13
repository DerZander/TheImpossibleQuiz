TeekesselchenQuiz = {}
TeekesselchenQuiz.__index = TeekesselchenQuiz

function TeekesselchenQuiz:New()
    local obj = {}

    setmetatable(obj, self)

    obj.currentQuestion = 1
    obj.score = 0
    obj.answers = {}

    return obj
end

function TeekesselchenQuiz:GetQuestion()
    return TeekesselchenQuizData.Questions[self.currentQuestion]
end

function TeekesselchenQuiz:PrepareQuestion()
    local correctSide = math.random(1, 2) == 1 and "A" or "B"

    self.activeQuestion = {
        data = self:GetQuestion(),
        correctSide = correctSide
    }

    return self.activeQuestion
end

function TeekesselchenQuiz:Answer(side)
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

function TeekesselchenQuiz:NextQuestion()
    self.currentQuestion = self.currentQuestion + 1
end

function TeekesselchenQuiz:IsFinished()
    return self.currentQuestion > #TeekesselchenQuizData.Questions
end