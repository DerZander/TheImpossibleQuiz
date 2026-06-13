local quiz = TeekesselchenQuiz:New()
local frame = TeekesselchenQuizFrameRef

local function ShowQuestion()

    if quiz:IsFinished() then

        frame.question:SetText(
            string.format(
                "Quiz beendet!\n\nPunkte: %d/%d",
                quiz.score,
                #TeekesselchenQuizData.Questions
            )
        )

        frame.buttonA:Hide()
        frame.buttonB:Hide()
        frame.nextButton:Hide()

        return
    end

    local q = quiz:PrepareQuestion()

    frame.progress:SetText(
        string.format(
            "Frage %d von %d",
            quiz.currentQuestion,
            #TeekesselchenQuizData.Questions
        )
    )

    frame.question:SetText(q.data.question)

    frame.buttonA:SetText("A: " .. q.data.word)
    frame.buttonB:SetText("B: " .. q.data.word)

    frame.feedback:SetText("")
    frame.explanation:SetText("")

    frame.buttonA:Enable()
    frame.buttonB:Enable()

    frame.nextButton:Hide()
end

local function HandleAnswer(side)

    local correct = quiz:Answer(side)

    frame.buttonA:Disable()
    frame.buttonB:Disable()

    if correct then
        frame.feedback:SetText("Richtig!")
        frame.explanation:SetText(
                "Richtige Antwort: "
                .. quiz.activeQuestion.correctSide
                .. "\n\n "
                .. quiz.activeQuestion.data.correctExplanation
                .. "\n\n Die andere Antwort wäre falsch, weil "
                .. quiz.activeQuestion.data.wrongExplanation
        )
    else
        frame.feedback:SetText("Leider falsch!")
            frame.explanation:SetText(
            "Richtige Antwort: "
            .. quiz.activeQuestion.correctSide
            .. "\n\n"
            .. quiz.activeQuestion.data.correctExplanation
            .. "\n\n Die Antwort ist falsch, weil "
            .. quiz.activeQuestion.data.wrongExplanation
            )
    end

    frame.nextButton:Show()
end

frame.buttonA:SetScript("OnClick", function()
    HandleAnswer("A")
end)

frame.buttonB:SetScript("OnClick", function()
    HandleAnswer("B")
end)

frame.nextButton:SetScript("OnClick", function()
    quiz:NextQuestion()
    ShowQuestion()
end)

SLASH_TEEKESSELCHEN1 = "/quiz"

SlashCmdList["TEEKESSELCHEN"] = function()

    frame:Show()

    quiz = TeekesselchenQuiz:New()

    frame.buttonA:Show()
    frame.buttonB:Show()

    ShowQuestion()
end