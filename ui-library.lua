local sectionlibrary = {}
   function sectionlibrary:CreateSection(sectionName)
    if not game:GetService("CoreGui"):FindFirstChild("~~<[{(uilibrary)}]>~~") then
        local uilibrary = Instance.new("ScreenGui")
		local sections = Instance.new("Frame")
		local template = Instance.new("ImageLabel")
		local top = Instance.new("ImageLabel")
		local shadow = Instance.new("Frame")
		local shadowgradiant = Instance.new("UIGradient")
		local title = Instance.new("TextLabel")
		local grad = Instance.new("UIGradient")
		local main = Instance.new("Frame")
		local template_2 = Instance.new("TextButton")
		local UIListLayout = Instance.new("UIListLayout")
		local UIListLayout_2 = Instance.new("UIListLayout")

		uilibrary.Name = "~~<[{(uilibrary)}]>~~"
		uilibrary.Parent = game:GetService("CoreGui")

		sections.Name = "sections"
		sections.Parent = uilibrary
		sections.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		sections.BackgroundTransparency = 1.000
		sections.BorderSizePixel = 0
		sections.Position = UDim2.new(0.0127272727, 0, 0.0109223304, 0)
		sections.Size = UDim2.new(0, 1086, 0, 254)

		template.Name = "template"
        template.Visible = false
		template.Parent = sections
		template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		template.BackgroundTransparency = 1.000
		template.Position = UDim2.new(0.032648474, 0, 0.0372474827, 0)
		template.Size = UDim2.new(0, 177, 0, 241)
		template.Image = "rbxassetid://3570695787"
		template.ScaleType = Enum.ScaleType.Slice
		template.SliceCenter = Rect.new(100, 100, 100, 100)
		template.SliceScale = 0.060
        _G.SECTION = template

		top.Name = "top"
		top.Parent = template
		top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		top.BackgroundTransparency = 1.000
		top.Position = UDim2.new(-6.85788279e-07, 0, 0, 0)
		top.Size = UDim2.new(0, 177, 0, 25)
		top.Image = "rbxassetid://3570695787"
		top.ImageColor3 = Color3.fromRGB(44, 44, 44)
		top.ScaleType = Enum.ScaleType.Slice
		top.SliceCenter = Rect.new(100, 100, 100, 100)
		top.SliceScale = 0.060

		shadow.Name = "shadow"
		shadow.Parent = top
		shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		shadow.BorderSizePixel = 0
		shadow.Position = UDim2.new(1.37157656e-06, 0, 0.680000007, 0)
		shadow.Size = UDim2.new(0, 177, 0, 16)

		shadowgradiant.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(44, 44, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(56, 56, 56))}
		shadowgradiant.Rotation = 90
		shadowgradiant.Name = "shadowgradiant"
		shadowgradiant.Parent = shadow

		title.Parent = top
		title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		title.BackgroundTransparency = 1.000
		title.BorderSizePixel = 0
		title.Position = UDim2.new(1.37157656e-06, 0, 0, 0)
		title.Size = UDim2.new(0, 177, 0, 25)
		title.Font = Enum.Font.Gotham
		title.Text = "TechHub"
		title.TextColor3 = Color3.fromRGB(255, 255, 255)
		title.TextSize = 20.000
		title.TextWrapped = true

		grad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(44, 44, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(56, 56, 56))}
		grad.Rotation = 270
		grad.Name = "grad"
		grad.Parent = template

		main.Name = "main"
		main.Parent = template
		main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		main.BackgroundTransparency = 1.000
		main.BorderSizePixel = 0
		main.Position = UDim2.new(0, 0, 0.103734441, 0)
		main.Size = UDim2.new(0, 177, 0, 216)

		template_2.Name = "template"
        template_2.Visible = false
		template_2.Parent = main
		template_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		template_2.BackgroundTransparency = 1.000
		template_2.BorderSizePixel = 0
		template_2.Position = UDim2.new(0.00565006258, 0, 0.0352958217, 0)
		template_2.Size = UDim2.new(0, 176, 0, 22)
		template_2.Font = Enum.Font.Gotham
		template_2.Text = "template"
		template_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		template_2.TextScaled = true
		template_2.TextSize = 14.000
		template_2.TextWrapped = true

		UIListLayout.Parent = main
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

		UIListLayout_2.Parent = sections
		UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 15)
    end
    repeat wait() until _G.SECTION
        local section = _G.SECTION:Clone()
        section.Parent = gui.sections
        section.Name = sectionName 
        section.Visible = true
        section.top.title.Text = sectionName
   
        local buttonlibrary = {}
        function buttonlibrary:CreateButton(buttonName)
            local button = section.main.template:Clone()
            button.Parent = section.main 
            button.Name = buttonName
            button.Text = buttonName
            button.Visible = true
        end
   
    return buttonlibrary
end
return sectionlibrary
