local quiz = TeekesselchenQuiz:New()
local frame = TeekesselchenQuizFrameRef

local function ShowQuestion()

    if quiz:IsFinished() then
        local percentage = math.floor((quiz.score / #TeekesselchenQuizData.Questions) * 100)
        local rating = ""
        
        if percentage >= 90 then
            rating = "*** HERVORRAGEND! ***"
        elseif percentage >= 70 then
            rating = "** Sehr gut! **"
        elseif percentage >= 50 then
            rating = "* Gut gemacht! *"
        else
            rating = "Weiter üben!"
        end

        frame.question:SetText(
            string.format(
                "Quiz beendet!\n\n%s\n\nPunkte: %d/%d (%d%%)",
                rating,
                quiz.score,
                #TeekesselchenQuizData.Questions,
                percentage
            )
        )

        frame.buttonA:Hide()
        frame.buttonB:Hide()
        frame.nextButton:Hide()
        frame.scoreText:SetText("")
        frame.feedback:SetText("")
        frame.explanation:SetText("")
        frame.userAnswer:SetText("")

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
    
    frame.scoreText:SetText(
        string.format("%d Punkte", quiz.score)
    )

    frame.question:SetText(q.data.question)

    frame.buttonA:SetText(q.data.word)
    frame.buttonB:SetText(q.data.word)

    frame.feedback:SetText("")
    frame.explanation:SetText("")
    frame.userAnswer:SetText("")

    frame.buttonA:Enable()
    frame.buttonB:Enable()

    frame.nextButton:Hide()
end

local function HandleAnswer(side)

    local correct = quiz:Answer(side)

    frame.buttonA:Disable()
    frame.buttonB:Disable()

    if correct then
        frame.feedback:SetText("RICHTIG!")
        frame.feedback:SetTextColor(0.2, 1, 0.2, 1)
    else
        frame.feedback:SetText("LEIDER FALSCH!")
        frame.feedback:SetTextColor(1, 0.2, 0.2, 1)
    end
    
    frame.userAnswer:SetText(
        string.format("Ihr Tipp: %s", side)
    )

    frame.explanation:SetText(
        string.format(
            "Richtige Antwort: %s\n\n> %s\n\nDie andere Bedeutung:\n> %s",
            quiz.activeQuestion.correctSide,
            quiz.activeQuestion.data.correctExplanation,
            quiz.activeQuestion.data.wrongExplanation
        )
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

SLASH_TEEKESSELCHEN1 = "/quiz"

SlashCmdList["TEEKESSELCHEN"] = function()

    frame:Show()

    quiz = TeekesselchenQuiz:New()

    frame.buttonA:Show()
    frame.buttonB:Show()

    ShowQuestion()
end