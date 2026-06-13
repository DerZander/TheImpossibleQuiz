local button = CreateFrame("Button", "UnmoeglichesQuizMinimapButton", Minimap)
button:SetSize(32, 32)
button:SetFrameStrata("MEDIUM")
button:SetFrameLevel(8)
button:SetMovable(true)
button:EnableMouse(true)
button:RegisterForDrag("LeftButton")
button:RegisterForClicks("LeftButtonUp", "RightButtonUp")

-- Position (Winkel in Grad)
local minimapPos = 220

-- Icon Textur - Eigenes Logo (rund abgeschnitten)
local icon = button:CreateTexture(nil, "BACKGROUND")
icon:SetSize(20, 20)
icon:SetPoint("CENTER")
icon:SetTexture("Interface\\AddOns\\DasUmmöglicheQuiz\\logo")
-- Runde Maske: Standard-Kreisausschnitt
local q = 0.08  -- Offset für runden Schnitt
icon:SetTexCoord(q, 1-q, q, 1-q)

-- Highlight-Effekt
button:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIcon-BlinkHilight")
local highlight = button:GetHighlightTexture()
highlight:SetTexCoord(q, 1-q, q, 1-q)

-- Runder Rahmen (Minimap-Border)
local overlay = button:CreateTexture(nil, "OVERLAY")
overlay:SetSize(53, 53)
overlay:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
overlay:SetPoint("TOPLEFT")

-- Tooltip
button:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_LEFT")
    GameTooltip:SetText("Das unmögliche Quiz", 1, 0.82, 0, 1)
    GameTooltip:AddLine("Linksklick: Quiz starten", 1, 1, 1, 1)
    GameTooltip:AddLine("Rechtsklick: Position zurücksetzen", 0.7, 0.7, 0.7, 1)
    GameTooltip:AddLine("Ziehen: Position ändern", 0.7, 0.7, 0.7, 1)
    GameTooltip:Show()
end)

button:SetScript("OnLeave", function(self)
    GameTooltip:Hide()
end)

-- Klick Handler
button:SetScript("OnClick", function(self, button)
    if button == "LeftButton" then
        -- Quiz öffnen
        if SlashCmdList["UNMOEGLICHESQUIZ"] then
            SlashCmdList["UNMOEGLICHESQUIZ"]()
        end
    elseif button == "RightButton" then
        -- Position zurücksetzen
        minimapPos = 220
        UpdatePosition()
    end
end)

-- Drag Handler
button:SetScript("OnDragStart", function(self)
    self:SetScript("OnUpdate", function(self)
        local mx, my = Minimap:GetCenter()
        local px, py = GetCursorPosition()
        local scale = Minimap:GetEffectiveScale()
        px, py = px / scale, py / scale
        
        local angle = math.deg(math.atan2(py - my, px - mx))
        minimapPos = angle
        UpdatePosition()
    end)
end)

button:SetScript("OnDragStop", function(self)
    self:SetScript("OnUpdate", nil)
end)

-- Position aktualisieren
function UpdatePosition()
    local angle = math.rad(minimapPos)
    local x = math.cos(angle) * 80
    local y = math.sin(angle) * 80
    button:ClearAllPoints()
    button:SetPoint("CENTER", Minimap, "CENTER", x, y)
end

-- Initiale Position
UpdatePosition()
