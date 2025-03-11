local UILibrary = {}

-- Helper function to create the main UI structure
function UILibrary.CreateUI(parent, titleText, size, position)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "UI"
    ScreenGui.Parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
    MainFrame.BackgroundTransparency = 0.150
    MainFrame.BorderColor3 = Color3.fromRGB(80, 80, 80)
    MainFrame.BorderSizePixel = 5
    MainFrame.Size = size or UDim2.new(0, 829, 0, 531)
    MainFrame.Position = position or UDim2.new(0.189883262, 0, 0.135071084, 0)

    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Parent = MainFrame
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderColor3 = Color3.fromRGB(136, 136, 136)
    Title.BorderSizePixel = 3
    Title.Position = UDim2.new(0.335814118, 0, 0, 0)
    Title.Size = UDim2.new(0, 240, 0, 60)
    Title.Font = Enum.Font.Ubuntu
    Title.Text = titleText or "Title"
    Title.TextColor3 = Color3.fromRGB(0, 0, 0)
    Title.TextScaled = true
    Title.TextWrapped = true

    local Page = Instance.new("Frame")
    Page.Name = "Page"
    Page.Parent = MainFrame
    Page.BackgroundColor3 = Color3.fromRGB(111, 111, 111)
    Page.BorderColor3 = Color3.fromRGB(80, 80, 80)
    Page.BorderSizePixel = 3
    Page.Position = UDim2.new(0.325693607, 0, 0.135593221, 0)
    Page.Size = UDim2.new(0, 539, 0, 436)

    -- Return the structure for further customization
    return {
        ScreenGui = ScreenGui,
        MainFrame = MainFrame,
        Title = Title,
        Page = Page
    }
end

-- Function to create a generic button
function UILibrary.CreateButton(parent, text, size, position)
    local Button = Instance.new("TextButton")
    Button.Name = "Button"
    Button.Parent = parent
    Button.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
    Button.BorderColor3 = Color3.fromRGB(72, 69, 69)
    Button.BorderSizePixel = 2
    Button.Position = position or UDim2.new(0.0148423007, 0, 0.0183486231, 0)
    Button.Size = size or UDim2.new(0, 200, 0, 50)
    Button.Font = Enum.Font.Ubuntu
    Button.Text = text or "Button"
    Button.TextColor3 = Color3.fromRGB(0, 0, 0)
    Button.TextScaled = true
    Button.TextWrapped = true
    return Button
end

-- Function to create a toggle button with logic
function UILibrary.CreateToggle(parent, text, size, position)
    local Toggle = Instance.new("TextButton")
    Toggle.Name = "Toggle"
    Toggle.Parent = parent
    Toggle.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
    Toggle.BorderColor3 = Color3.fromRGB(255, 0, 0) -- Default red
    Toggle.BorderSizePixel = 2
    Toggle.Position = position or UDim2.new(0.0148423007, 0, 0.172018349, 0)
    Toggle.Size = size or UDim2.new(0, 200, 0, 50)
    Toggle.Font = Enum.Font.Ubuntu
    Toggle.Text = text or "Toggle"
    Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
    Toggle.TextScaled = true
    Toggle.TextWrapped = true

    -- Toggle logic
    local isGreen = false
    Toggle.MouseButton1Click:Connect(function()
        if isGreen then
            Toggle.BorderColor3 = Color3.fromRGB(255, 0, 0) -- Red
            -- Add deactivation callback here if needed
        else
            Toggle.BorderColor3 = Color3.fromRGB(0, 255, 0) -- Green
            -- Add activation callback here if needed
        end
        isGreen = not isGreen
    end)

    return Toggle
end

-- Function to create a tab (placeholder for future expansion)
function UILibrary.CreateTab(parent, text, size, position)
    local Tab = Instance.new("TextButton")
    Tab.Name = "Tab"
    Tab.Parent = parent
    Tab.BackgroundColor3 = Color3.fromRGB(109, 109, 109)
    Tab.BorderColor3 = Color3.fromRGB(80, 80, 80)
    Tab.BorderSizePixel = 3
    Tab.Position = position or UDim2.new(0, 0, 0.135593221, 0)
    Tab.Size = size or UDim2.new(0, 214, 0, 66)
    Tab.Font = Enum.Font.Ubuntu
    Tab.Text = text or "Tab"
    Tab.TextColor3 = Color3.fromRGB(0, 0, 0)
    Tab.TextScaled = true
    Tab.TextWrapped = true
    return Tab
end

return UILibrary
