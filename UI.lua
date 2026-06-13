local frame = CreateFrame("Frame", "Das unmögliche Quiz", UIParent, "BackdropTemplate")

frame:SetSize(600, 360)
frame:SetPoint("CENTER")
frame:SetMovable(true)
frame:EnableMouse(true)
frame:RegisterForDrag("LeftButton")
frame:SetClampedToScreen(true)
frame:SetScript("OnDragStart", function(self)
    self:StartMoving()
end)
frame:SetScript("OnDragStop", function(self)
    self:StopMovingOrSizing()
end)

frame:SetBackdrop({
    bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
    tile = true,
    tileSize = 32,
    edgeSize = 32,
    insets = { left = 8, right = 8, top = 8, bottom = 8 }
})
frame:SetBackdropColor(0.05, 0.05, 0.08, 0.95)
frame:SetBackdropBorderColor(0.3, 0.3, 0.35, 1)

frame:Hide()

frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
frame.title:SetPoint("TOP", 0, -20)
frame.title:SetText("Das unmögliche Quiz")
frame.title:SetTextColor(1, 0.82, 0, 1)

frame.scoreText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
frame.scoreText:SetPoint("TOPRIGHT", -45, -55)
frame.scoreText:SetTextColor(0.7, 0.9, 1, 1)

frame.progress = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
frame.progress:SetPoint("TOP", 0, -55)
frame.progress:SetTextColor(0.9, 0.9, 0.9, 1)

frame.question = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
frame.question:SetWidth(500)
frame.question:SetJustifyH("CENTER")
frame.question:SetPoint("TOP", 0, -90)
frame.userAnswer = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
frame.userAnswer:SetPoint("TOP", 0, -165)
frame.userAnswer:SetTextColor(0.8, 0.8, 0.8, 1)
frame.feedback = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
frame.feedback:SetPoint("TOP", 0, -180)

frame.explanation = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
frame.explanation:SetWidth(520)
frame.explanation:SetJustifyH("CENTER")
frame.explanation:SetPoint("TOP", 0, -210)

frame.buttonA = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
frame.buttonA:SetSize(180, 40)
frame.buttonA:SetPoint("TOPLEFT", 80, -120)

frame.buttonB = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
frame.buttonB:SetSize(180, 40)
frame.buttonB:SetPoint("TOPRIGHT", -80, -120)

frame.nextButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
frame.nextButton:SetSize(180, 40)
frame.nextButton:SetPoint("BOTTOM", 0, 20)
frame.nextButton:SetText("Nächste Frage")
frame.nextButton:Hide()

frame.closeButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
frame.closeButton:SetSize(28, 28)
frame.closeButton:SetPoint("TOPRIGHT", -16, -14)
frame.closeButton:SetText("X")
frame.closeButton:SetScript("OnClick", function()
    frame:Hide()
end)

UnmoeglichesQuizFrameRef = frame