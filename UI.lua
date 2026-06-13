local frame = CreateFrame("Frame", "TeekesselchenQuizFrame", UIParent, "BackdropTemplate")

frame:SetSize(650, 420)
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

frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalHuge")
frame.title:SetPoint("TOP", 0, -18)
frame.title:SetText("Teekesselchen Quiz")
frame.title:SetTextColor(1, 0.82, 0, 1)

frame.scoreText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
frame.scoreText:SetPoint("TOPRIGHT", -45, -55)
frame.scoreText:SetTextColor(0.7, 0.9, 1, 1)

frame.progress = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
frame.progress:SetPoint("TOP", 0, -55)
frame.progress:SetTextColor(0.9, 0.9, 0.9, 1)

frame.question = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
frame.question:SetWidth(570)
frame.question:SetJustifyH("CENTER")
frame.question:SetPoint("TOP", 0, -110)
frame.question:SetSpacing(4)

frame.userAnswer = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
frame.userAnswer:SetPoint("BOTTOM", 0, 165)
frame.userAnswer:SetTextColor(0.8, 0.8, 0.8, 1)

frame.feedback = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalHuge2")
frame.feedback:SetPoint("BOTTOM", 0, 140)

frame.explanation = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
frame.explanation:SetWidth(570)
frame.explanation:SetJustifyH("LEFT")
frame.explanation:SetPoint("BOTTOM", 0, 60)
frame.explanation:SetSpacing(3)

frame.buttonA = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
frame.buttonA:SetSize(220, 55)
frame.buttonA:SetPoint("BOTTOMLEFT", 65, 190)
frame.buttonA:SetNormalFontObject("GameFontNormalLarge")

frame.buttonB = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
frame.buttonB:SetSize(220, 55)
frame.buttonB:SetPoint("BOTTOMRIGHT", -65, 190)
frame.buttonB:SetNormalFontObject("GameFontNormalLarge")

frame.nextButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
frame.nextButton:SetSize(200, 45)
frame.nextButton:SetPoint("BOTTOM", 0, 15)
frame.nextButton:SetText(">> Nächste Frage")
frame.nextButton:SetNormalFontObject("GameFontNormal")
frame.nextButton:Hide()

frame.closeButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
frame.closeButton:SetSize(120, 28)
frame.closeButton:SetPoint("TOPRIGHT", -16, -14)
frame.closeButton:SetText("Schliessen")
frame.closeButton:SetScript("OnClick", function()
    frame:Hide()
end)

TeekesselchenQuizFrameRef = frame