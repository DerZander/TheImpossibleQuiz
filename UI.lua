local frame = CreateFrame("Frame", "TeekesselchenQuizFrame", UIParent, "BackdropTemplate")

frame:SetSize(600, 350)
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
    bgFile = "Interface/DialogFrame/UI-DialogBox-Background"
})

frame:Hide()

frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
frame.title:SetPoint("TOP", 0, -20)

frame.progress = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
frame.progress:SetPoint("TOP", 0, -50)

frame.question = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
frame.question:SetWidth(500)
frame.question:SetJustifyH("CENTER")
frame.question:SetPoint("TOP", 0, -90)

frame.feedback = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
frame.feedback:SetPoint("BOTTOM", 0, 80)

frame.explanation = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
frame.explanation:SetWidth(520)
frame.explanation:SetJustifyH("CENTER")
frame.explanation:SetPoint("BOTTOM", 0, 40)

frame.buttonA = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
frame.buttonA:SetSize(180, 40)
frame.buttonA:SetPoint("BOTTOMLEFT", 80, 120)

frame.buttonB = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
frame.buttonB:SetSize(180, 40)
frame.buttonB:SetPoint("BOTTOMRIGHT", -80, 120)

frame.nextButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
frame.nextButton:SetSize(180, 40)
frame.nextButton:SetPoint("BOTTOM", 0, 10)
frame.nextButton:SetText("Nächste Frage")
frame.nextButton:Hide()

frame.closeButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
frame.closeButton:SetSize(120, 28)
frame.closeButton:SetPoint("TOPRIGHT", -16, -14)
frame.closeButton:SetText("Schliessen")
frame.closeButton:SetScript("OnClick", function()
    frame:Hide()
end)

TeekesselchenQuizFrameRef = frame