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

    frame.buttonA:SetText(q.data.word)
    frame.buttonB:SetText(q.data.word)

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
    else
        frame.feedback:SetText("Leider falsch!")
    end

    frame.explanation:SetText(
        "Richtige Antwort: "
        .. quiz.activeQuestion.correctSide
        .. "\n\n"
        .. quiz.activeQuestion.data.correctExplanation
        .. "\n\n💡 "
        .. quiz.activeQuestion.data.wrongExplanation
    )

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

SLASH_TEEKESSELCHEN1 = "/teekessel"

SlashCmdList["TEEKESSELCHEN"] = function()

    frame:Show()

    quiz = TeekesselchenQuiz:New()

    frame.buttonA:Show()
    frame.buttonB:Show()

    ShowQuestion()
end