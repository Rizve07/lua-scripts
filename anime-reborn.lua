-- Key System Script for Roblox with Enhanced UI
-- Replace the verification URL with your actual website URL

-- Create the key verification UI with improved design
local function createKeyUI()
    -- Services
    local tweenService = game:GetService("TweenService")
    local userInputService = game:GetService("UserInputService")
    
    -- Create UI elements
    local ScreenGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local HeaderFrame = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Shadow = Instance.new("Frame")
    local KeyContainer = Instance.new("Frame")
    local KeyInput = Instance.new("TextBox")
    local KeyInputIcon = Instance.new("ImageLabel")
    local SubmitButton = Instance.new("TextButton")
    local ButtonGradient = Instance.new("UIGradient")
    local GetKeyButton = Instance.new("TextButton")
    local GetKeyButtonGradient = Instance.new("UIGradient")
    local StatusLabel = Instance.new("TextLabel")
    local CornerMain = Instance.new("UICorner")
    local CornerHeader = Instance.new("UICorner")
    local CornerKeyInput = Instance.new("UICorner")
    local CornerSubmit = Instance.new("UICorner")
    local CornerGetKey = Instance.new("UICorner")
    
    -- Configure ScreenGui
    ScreenGui.Name = "KeySystemUI"
    ScreenGui.Parent = game:GetService("CoreGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.DisplayOrder = 999
    
    -- Configure MainFrame
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 28, 45)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.5, -175, 0.5, -125)
    MainFrame.Size = UDim2.new(0, 350, 0, 250)
    MainFrame.ClipsDescendants = true
    CornerMain.CornerRadius = UDim.new(0, 10)
    CornerMain.Parent = MainFrame
    
    -- Configure Shadow
    Shadow.Name = "Shadow"
    Shadow.Parent = MainFrame
    Shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.BackgroundTransparency = 0.7
    Shadow.BorderSizePixel = 0
    Shadow.Position = UDim2.new(0, 5, 0, 5)
    Shadow.Size = UDim2.new(1, 0, 1, 0)
    Shadow.ZIndex = -1
    
    -- Configure HeaderFrame
    HeaderFrame.Name = "HeaderFrame"
    HeaderFrame.Parent = MainFrame
    HeaderFrame.BackgroundColor3 = Color3.fromRGB(30, 41, 59)
    HeaderFrame.BorderSizePixel = 0
    HeaderFrame.Size = UDim2.new(1, 0, 0, 40)
    CornerHeader.CornerRadius = UDim.new(0, 8)
    CornerHeader.Parent = HeaderFrame
    
    -- Configure Title
    Title.Name = "Title"
    Title.Parent = HeaderFrame
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.Font = Enum.Font.GothamBold
    Title.Text = "Script Key Verification"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 18.000
    
    -- Configure KeyContainer
    KeyContainer.Name = "KeyContainer"
    KeyContainer.Parent = MainFrame
    KeyContainer.BackgroundTransparency = 1
    KeyContainer.Position = UDim2.new(0, 0, 0, 60)
    KeyContainer.Size = UDim2.new(1, 0, 0, 60)
    
    -- Configure KeyInput
    KeyInput.Name = "KeyInput"
    KeyInput.Parent = KeyContainer
    KeyInput.BackgroundColor3 = Color3.fromRGB(40, 55, 85)
    KeyInput.BorderSizePixel = 0
    KeyInput.Position = UDim2.new(0.5, -135, 0.5, -20)
    KeyInput.Size = UDim2.new(0, 270, 0, 40)
    KeyInput.Font = Enum.Font.Gotham
    KeyInput.PlaceholderText = "Enter your key here..."
    KeyInput.Text = ""
    KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
    KeyInput.TextSize = 14.000
    KeyInput.ClearTextOnFocus = false
    CornerKeyInput.CornerRadius = UDim.new(0, 6)
    CornerKeyInput.Parent = KeyInput
    
    -- Configure KeyInputIcon
    KeyInputIcon.Name = "KeyInputIcon"
    KeyInputIcon.Parent = KeyInput
    KeyInputIcon.BackgroundTransparency = 1
    KeyInputIcon.Position = UDim2.new(0, 8, 0.5, -10)
    KeyInputIcon.Size = UDim2.new(0, 20, 0, 20)
    KeyInputIcon.Image = "rbxassetid://3926307971"
    KeyInputIcon.ImageRectOffset = Vector2.new(404, 44)
    KeyInputIcon.ImageRectSize = Vector2.new(36, 36)
    KeyInputIcon.ImageColor3 = Color3.fromRGB(200, 200, 200)
    
    -- Move the text to make room for the icon
    KeyInput.TextXAlignment = Enum.TextXAlignment.Left
    KeyInput.Position = UDim2.new(0.5, -135, 0.5, -20)
    KeyInput.Size = UDim2.new(0, 270, 0, 40)
    KeyInput.TextWrapped = true
    KeyInput.ClipsDescendants = true
    KeyInput.TextSize = 16
    
    -- Add padding for the icon
    local padding = Instance.new("UIPadding")
    padding.Parent = KeyInput
    padding.PaddingLeft = UDim.new(0, 36)
    
    -- Configure SubmitButton
    SubmitButton.Name = "SubmitButton"
    SubmitButton.Parent = MainFrame
    SubmitButton.BackgroundColor3 = Color3.fromRGB(30, 150, 75)
    SubmitButton.BorderSizePixel = 0
    SubmitButton.Position = UDim2.new(0.5, -135, 0, 140)
    SubmitButton.Size = UDim2.new(0, 270, 0, 40)
    SubmitButton.Font = Enum.Font.GothamBold
    SubmitButton.Text = "SUBMIT KEY"
    SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    SubmitButton.TextSize = 16.000
    CornerSubmit.CornerRadius = UDim.new(0, 6)
    CornerSubmit.Parent = SubmitButton
    
    ButtonGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 180, 90)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 150, 75))
    }
    ButtonGradient.Rotation = 45
    ButtonGradient.Parent = SubmitButton
    
    -- Configure GetKeyButton
    GetKeyButton.Name = "GetKeyButton"
    GetKeyButton.Parent = MainFrame
    GetKeyButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    GetKeyButton.BorderSizePixel = 0
    GetKeyButton.Position = UDim2.new(0.5, -135, 0, 190)
    GetKeyButton.Size = UDim2.new(0, 270, 0, 40)
    GetKeyButton.Font = Enum.Font.GothamSemibold
    GetKeyButton.Text = "GET A KEY"
    GetKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    GetKeyButton.TextSize = 16.000
    CornerGetKey.CornerRadius = UDim.new(0, 6)
    CornerGetKey.Parent = GetKeyButton
    
    GetKeyButtonGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 80, 120)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 70, 110))
    }
    GetKeyButtonGradient.Rotation = 45
    GetKeyButtonGradient.Parent = GetKeyButton
    
    -- Configure StatusLabel
    StatusLabel.Name = "StatusLabel"
    StatusLabel.Parent = MainFrame
    StatusLabel.BackgroundTransparency = 1
    StatusLabel.Position = UDim2.new(0, 0, 1, -30)
    StatusLabel.Size = UDim2.new(1, 0, 0, 25)
    StatusLabel.Font = Enum.Font.Gotham
    StatusLabel.Text = ""
    StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    StatusLabel.TextSize = 14.000
    
    -- Animation effects
    local function createButtonEffect(button)
        button.MouseEnter:Connect(function()
            tweenService:Create(button, TweenInfo.new(0.3), {BackgroundTransparency = 0.2}):Play()
        end)
        
        button.MouseLeave:Connect(function()
            tweenService:Create(button, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
        end)
        
        button.MouseButton1Down:Connect(function()
            tweenService:Create(button, TweenInfo.new(0.1), {Size = button.Size - UDim2.new(0, 4, 0, 4), Position = button.Position + UDim2.new(0, 2, 0, 2)}):Play()
        end)
        
        button.MouseButton1Up:Connect(function()
            tweenService:Create(button, TweenInfo.new(0.1), {Size = button.Size + UDim2.new(0, 4, 0, 4), Position = button.Position - UDim2.new(0, 2, 0, 2)}):Play()
        end)
    end
    
    createButtonEffect(SubmitButton)
    createButtonEffect(GetKeyButton)
    
    -- Entry animation
    MainFrame.Position = MainFrame.Position + UDim2.new(0, 0, 1, 0)
    MainFrame.BackgroundTransparency = 1
    Shadow.BackgroundTransparency = 1
    HeaderFrame.BackgroundTransparency = 1
    Title.TextTransparency = 1
    KeyInput.BackgroundTransparency = 1
    KeyInput.TextTransparency = 1
    SubmitButton.BackgroundTransparency = 1
    SubmitButton.TextTransparency = 1
    GetKeyButton.BackgroundTransparency = 1
    GetKeyButton.TextTransparency = 1
    StatusLabel.TextTransparency = 1
    KeyInputIcon.ImageTransparency = 1
    
    -- Animation sequence
    task.spawn(function()
        task.wait(0.1)
        tweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -175, 0.5, -125), BackgroundTransparency = 0}):Play()
        task.wait(0.2)
        tweenService:Create(Shadow, TweenInfo.new(0.5), {BackgroundTransparency = 0.7}):Play()
        tweenService:Create(HeaderFrame, TweenInfo.new(0.5), {BackgroundTransparency = 0}):Play()
        task.wait(0.1)
        tweenService:Create(Title, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
        task.wait(0.1)
        tweenService:Create(KeyInput, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
        tweenService:Create(KeyInputIcon, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
        task.wait(0.1)
        tweenService:Create(SubmitButton, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
        task.wait(0.1)
        tweenService:Create(GetKeyButton, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
        task.wait(0.1)
        tweenService:Create(StatusLabel, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
    end)
    
    -- Make the frame draggable
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    HeaderFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = MainFrame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    HeaderFrame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    userInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
    
    return {
        ScreenGui = ScreenGui,
        MainFrame = MainFrame,
        KeyInput = KeyInput,
        SubmitButton = SubmitButton,
        GetKeyButton = GetKeyButton,
        StatusLabel = StatusLabel,
        TweenService = tweenService
    }
end

-- Verify key with server
local function verifyKey(key)
    -- Replace with your website URL
    local url = "https://luarmor.ink/?verify=1&key=" .. key
    
    local success, response = pcall(function()
        return game:HttpGet(url)
    end)
    
    if success then
        if response == "valid" then
            return true, "valid"
        elseif response == "expired" then
            return false, "expired"
        elseif response == "used" then
            return false, "used"
        else
            return false, "invalid"
        end
    else
        return false, "error"
    end
end

-- Run the script after key verification
local function runMainScript()
    -- Your original script logic here
    loadstring(game:HttpGet(“https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua”, true))()

    for PlaceID, Execute in pairs(Games) do
        if PlaceID == game.PlaceId then
            loadstring(game:HttpGet(Execute))()
        end
    end
end

-- Initialize key system and UI
local function initKeySystem()
    local ui = createKeyUI()
    
    -- Handle Get Key button
    ui.GetKeyButton.MouseButton1Click:Connect(function()
        -- Website URL to get key
        local keyWebsite = "https://luarmor.ink/"
        
        -- Copy URL to clipboard
        setclipboard(keyWebsite)
        
        ui.StatusLabel.Text = "Website URL copied to clipboard! Paste in your browser."
        ui.StatusLabel.TextColor3 = Color3.fromRGB(50, 255, 125)
        
        -- Status effect animation
        ui.TweenService:Create(ui.StatusLabel, TweenInfo.new(0.3), {TextTransparency = 0.3}):Play()
        task.wait(0.15)
        ui.TweenService:Create(ui.StatusLabel, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
    end)
    
    -- Handle Submit button
    ui.SubmitButton.MouseButton1Click:Connect(function()
        local key = ui.KeyInput.Text:gsub("%s+", "") -- Remove any whitespace
        
        if key == "" then
            ui.StatusLabel.Text = "Please enter a key!"
            ui.StatusLabel.TextColor3 = Color3.fromRGB(255, 75, 75)
            
            -- Shake animation for error
            local originalPosition = ui.KeyInput.Position
            for i = 1, 3 do
                ui.TweenService:Create(ui.KeyInput, TweenInfo.new(0.1), {Position = originalPosition + UDim2.new(0, 5, 0, 0)}):Play()
                task.wait(0.1)
                ui.TweenService:Create(ui.KeyInput, TweenInfo.new(0.1), {Position = originalPosition - UDim2.new(0, 5, 0, 0)}):Play()
                task.wait(0.1)
            end
            ui.TweenService:Create(ui.KeyInput, TweenInfo.new(0.1), {Position = originalPosition}):Play()
            return
        end
        
        ui.StatusLabel.Text = "Verifying key..."
        ui.StatusLabel.TextColor3 = Color3.fromRGB(255, 215, 25)
        
        -- Loading animation
        local originalSize = ui.SubmitButton.Size
        local originalPosition = ui.SubmitButton.Position
        ui.TweenService:Create(ui.SubmitButton, TweenInfo.new(0.3), {
            Size = UDim2.new(0, 50, 0, 40),
            Position = UDim2.new(0.5, -25, 0, 140)
        }):Play()
        ui.SubmitButton.Text = "..."
        
        task.delay(1.5, function()
            local isValid, status = verifyKey(key)
            
            if isValid then
                ui.StatusLabel.Text = "Key verified successfully!"
                ui.StatusLabel.TextColor3 = Color3.fromRGB(50, 255, 125)
                ui.SubmitButton.Text = "✓"
                ui.TweenService:Create(ui.SubmitButton, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(50, 200, 100)}):Play()
                
                -- Success animation
                task.delay(1, function()
                    -- Fade out animation before destroying
                    ui.TweenService:Create(ui.MainFrame, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
                    ui.TweenService:Create(ui.KeyInput, TweenInfo.new(0.5), {BackgroundTransparency = 1, TextTransparency = 1}):Play()
                    ui.TweenService:Create(ui.SubmitButton, TweenInfo.new(0.5), {BackgroundTransparency = 1, TextTransparency = 1}):Play()
                    ui.TweenService:Create(ui.GetKeyButton, TweenInfo.new(0.5), {BackgroundTransparency = 1, TextTransparency = 1}):Play()
                    ui.TweenService:Create(ui.StatusLabel, TweenInfo.new(0.5), {TextTransparency = 1}):Play()
                    
                    task.wait(0.5)
                    ui.ScreenGui:Destroy()
                    runMainScript()
                end)
            else
                -- Reset button
                ui.TweenService:Create(ui.SubmitButton, TweenInfo.new(0.3), {
                    Size = originalSize,
                    Position = originalPosition
                }):Play()
                ui.SubmitButton.Text = "SUBMIT KEY"
                
                if status == "expired" then
                    ui.StatusLabel.Text = "This key has expired! Keys expire after 24 hours."
                    ui.StatusLabel.TextColor3 = Color3.fromRGB(255, 75, 75)
                elseif status == "used" then
                    ui.StatusLabel.Text = "This key has already been used!"
                    ui.StatusLabel.TextColor3 = Color3.fromRGB(255, 75, 75)
                else
                    ui.StatusLabel.Text = "Invalid key! Please try again."
                    ui.StatusLabel.TextColor3 = Color3.fromRGB(255, 75, 75)
                    
                    -- Shake animation for error
                    local originalPosition = ui.KeyInput.Position
                    for i = 1, 2 do
                        ui.TweenService:Create(ui.KeyInput, TweenInfo.new(0.1), {Position = originalPosition + UDim2.new(0, 5, 0, 0)}):Play()
                        task.wait(0.1)
                        ui.TweenService:Create(ui.KeyInput, TweenInfo.new(0.1), {Position = originalPosition - UDim2.new(0, 5, 0, 0)}):Play()
                        task.wait(0.1)
                    end
                    ui.TweenService:Create(ui.KeyInput, TweenInfo.new(0.1), {Position = originalPosition}):Play()
                end
            end
        end)
    end)
    
    return ui
end

-- Start the key system
initKeySystem()
