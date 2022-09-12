if _G.XXX == "SCRIPT_BF_TG_008" then
	local ScreenGui = Instance.new("ScreenGui")
	local ImageLabel = Instance.new("ImageLabel")
	local TextLabel = Instance.new("TextLabel")

	--Properties:

	ScreenGui.Parent = game.CoreGui

	ImageLabel.Parent = ScreenGui
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.Position = UDim2.new(0, 0, -0.0769230798, 0)
	ImageLabel.Size = UDim2.new(0, 1366, 0, 842)
	ImageLabel.Image = "rbxassetid://8774983857"

	TextLabel.Parent = ScreenGui
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(-0.0351390913, 0, 0.680649757, 0)
	TextLabel.Size = UDim2.new(0, 546, 0, 233)
	TextLabel.Font = Enum.Font.Antique
	TextLabel.Text = "Script By 𝑇𝐼𝐺𝐸𝑅#3287"
	TextLabel.TextColor3 = Color3.fromRGB(0, 234, 255)
	TextLabel.TextSize = 56.000
	TextLabel.TextWrapped = true
	wait(2)
	game.CoreGui:FindFirstChild("ScreenGui"):Destroy()


	wait(.2)
	do  local ui =  game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("Bounty")  if ui then ui:Destroy() end end

	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local player = game.Players.LocalPlayer
	local char = player.Character

	local Bounty = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local MainFrameUICorner = Instance.new("UICorner")
	local MainFrame2 = Instance.new("Frame")
	local MainFrame2UICorner = Instance.new("UICorner")
	local Bounty_2 = Instance.new("TextLabel")
	local CountBounty = Instance.new("TextLabel")
	local aos = Instance.new("TextLabel")
	local MainFrameUIPadding = Instance.new("UIPadding")
	local MainFrameUIListLayout = Instance.new("UIListLayout")
	local MainFrame2Stroke = Instance.new("UIStroke")
	local MainFrame3Stroke = Instance.new("UIStroke")
	local Level = Instance.new("TextLabel")
	local EXP = Instance.new("TextLabel")
	--Level --EXP
	local function MakeDraggable(topbarobject, object)
		local Dragging = nil
		local DragInput = nil
		local DragStart = nil
		local StartPosition = nil

		local function Update(input)
			local Delta = input.Position - DragStart
			local pos =
				UDim2.new(
					StartPosition.X.Scale,
					StartPosition.X.Offset + Delta.X,
					StartPosition.Y.Scale,
					StartPosition.Y.Offset + Delta.Y
				)
			local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
			Tween:Play()
		end

		topbarobject.InputBegan:Connect(
			function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					Dragging = true
					DragStart = input.Position
					StartPosition = object.Position

					input.Changed:Connect(
						function()
							if input.UserInputState == Enum.UserInputState.End then
								Dragging = false
							end
						end
					)
				end
			end
		)

		topbarobject.InputChanged:Connect(
			function(input)
				if
					input.UserInputType == Enum.UserInputType.MouseMovement or
					input.UserInputType == Enum.UserInputType.Touch
				then
					DragInput = input
				end
			end
		)

		UserInputService.InputChanged:Connect(
			function(input)
				if input == DragInput and Dragging then
					Update(input)
				end
			end
		)
	end

	Bounty.Name = "Bounty"
	Bounty.Parent = game:GetService("CoreGui").RobloxGui.Modules
	Bounty.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Bounty
	MainFrame.Active = true
	MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.395590931, 0, 0.431901842, 0)
	MainFrame.Size = UDim2.new(0, 341, 0, 103)
	MainFrame.ClipsDescendants = true

	MainFrameUICorner.Name = "MainFrameUICorner"
	MainFrameUICorner.Parent = MainFrame

	MainFrame2.Name = "MainFrame2"
	MainFrame2.Parent = MainFrame
	MainFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainFrame2.BackgroundTransparency = 1.000
	MainFrame2.Size = UDim2.new(0, 329, 0, 100)

	MainFrame2Stroke.Thickness = 1
	MainFrame2Stroke.Name = ""
	MainFrame2Stroke.Parent = MainFrame2
	MainFrame2Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	MainFrame2Stroke.LineJoinMode = Enum.LineJoinMode.Round
	MainFrame2Stroke.Color = Color3.fromRGB(126, 126, 126)
	MainFrame2Stroke.Transparency = 0

	MainFrame2UICorner.Name = "MainFrame2UICorner"
	MainFrame2UICorner.Parent = MainFrame2

	Bounty_2.Name = "XOP-HUB | AUTOFARM"
	Bounty_2.Parent = MainFrame2
	Bounty_2.Active = true
	Bounty_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Bounty_2.BackgroundTransparency = 1.000
	Bounty_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Bounty_2.BorderSizePixel = 0
	Bounty_2.Position = UDim2.new(-0.0151975686, 0, 0.0232558139, 0)
	Bounty_2.Size = UDim2.new(0, 341, 0, 23)
	Bounty_2.Font = Enum.Font.Gotham
	Bounty_2.Text = "  XOP-HUB | AUTOFARM"
	Bounty_2.TextColor3 = Color3.fromRGB(255, 0, 0)
	Bounty_2.TextSize = 12.000
	Bounty_2.TextWrapped = true

	CountBounty.Name = "CountBounty"
	CountBounty.Parent = MainFrame2
	CountBounty.Active = true
	CountBounty.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CountBounty.BackgroundTransparency = 1.000
	CountBounty.BorderColor3 = Color3.fromRGB(255, 255, 255)
	CountBounty.BorderSizePixel = 0
	CountBounty.Position = UDim2.new(0.00607902743, 0, 0.395348847, 0)
	CountBounty.Size = UDim2.new(0, 323, 0, 25)
	CountBounty.Font = Enum.Font.GothamBold
	CountBounty.TextColor3 = Color3.fromRGB(255, 255, 0)
	CountBounty.TextSize = 12.000
	CountBounty.TextWrapped = true

	Level.Name = "Level"
	Level.Parent = MainFrame2
	Level.Active = true
	Level.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Level.BackgroundTransparency = 1.000
	Level.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Level.BorderSizePixel = 0
	Level.Position = UDim2.new(0.00607902743, 0, 0.395348847, 0)
	Level.Size = UDim2.new(0, 329, 0, 0)
	Level.Font = Enum.Font.GothamBold
	Level.TextColor3 = Color3.fromRGB(0, 255, 255)
	Level.TextSize = 12.000
	Level.TextWrapped = true


	aos.Name = "os"
	aos.Parent = MainFrame2
	aos.Active = true
	aos.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	aos.BackgroundTransparency = 1.000
	aos.BorderColor3 = Color3.fromRGB(255, 255, 255)
	aos.BorderSizePixel = 0
	aos.Position = UDim2.new(0.00607902743, 0, 0.732558131, 0)
	aos.Size = UDim2.new(0, 323, 0, 23)
	aos.Font = Enum.Font.Gotham
	aos.TextColor3 = Color3.fromRGB(255, 255, 255)
	aos.TextSize = 12.000
	aos.TextWrapped = true
	spawn(function()
		while wait(0.001) do 
			aos.Text = os.date("%I:%M:%S".." | ".."%B %d, %Y")
		end
	end)

	MainFrameUIPadding.Name = "MainFrameUIPadding"
	MainFrameUIPadding.Parent = MainFrame
	MainFrameUIPadding.PaddingLeft = UDim.new(0, 5)
	MainFrameUIPadding.PaddingTop = UDim.new(0, 10)

	MainFrameUIListLayout.Name = "MainFrameUIListLayout"
	MainFrameUIListLayout.Parent = MainFrame
	MainFrameUIListLayout.FillDirection = Enum.FillDirection.Vertical
	MainFrameUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	MainFrameUIListLayout.Padding = UDim.new(0, 8)

	local MainFrame3 = Instance.new("Frame")
	local MainFrame3UICorner = Instance.new("UICorner")

	--Properties:

	MainFrame3.Name = "MainFrame3"
	MainFrame3.Parent = MainFrame
	MainFrame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainFrame3.BackgroundTransparency = 1.000
	MainFrame3.Size = UDim2.new(0, 329, 0, 86)

	MainFrame3UICorner.Name = "MainFram32UICorner"
	MainFrame3UICorner.Parent = MainFrame3

	MainFrame3Stroke.Thickness = 1
	MainFrame3Stroke.Name = ""
	MainFrame3Stroke.Parent = MainFrame3
	MainFrame3Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	MainFrame3Stroke.LineJoinMode = Enum.LineJoinMode.Round
	MainFrame3Stroke.Color = Color3.fromRGB(126, 126, 126)
	MainFrame3Stroke.Transparency = 0

	local HealthBar = Instance.new("Frame")
	local HealthBarUICorner = Instance.new("UICorner")
	local Health = Instance.new("Frame")
	local HealthUICorner = Instance.new("UICorner")
	local StaminaBar = Instance.new("Frame")
	local StaminaBarUICorner = Instance.new("UICorner")
	local Stamina = Instance.new("Frame")
	local StaminaUICorner = Instance.new("UICorner")
	local ImagePlayer = Instance.new("ImageLabel")
	local ImagePlayerUICorner = Instance.new("UICorner")
	local TextName = Instance.new("TextLabel")
	local TextHealth = Instance.new("TextLabel")
	local TextStamina = Instance.new("TextLabel")

	--Properties:

	HealthBar.Name = "HealthBar"
	HealthBar.Parent = MainFrame3
	HealthBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	HealthBar.BorderSizePixel = 0
	HealthBar.Position = UDim2.new(0.255319148, 0, 0.593023241, 0)
	HealthBar.Size = UDim2.new(0, 241, 0, 5)

	HealthBarUICorner.Name = "HealthBarUICorner"
	HealthBarUICorner.Parent = HealthBar

	Health.Name = "Health"
	Health.Parent = HealthBar
	Health.Active = true
	Health.BackgroundColor3 = Color3.fromRGB(85, 170, 127)
	Health.BorderSizePixel = 0

	HealthUICorner.Name = "HealthUICorner"
	HealthUICorner.Parent = Health

	StaminaBar.Name = "StaminaBar"
	StaminaBar.Parent = MainFrame3
	StaminaBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	StaminaBar.BorderSizePixel = 0
	StaminaBar.Position = UDim2.new(0.255319148, 0, 0.732558131, 0)
	StaminaBar.Size = UDim2.new(0, 241, 0, 5)

	StaminaBarUICorner.Name = "StaminaBarUICorner"
	StaminaBarUICorner.Parent = StaminaBar

	Stamina.Name = "Stamina"
	Stamina.Parent = StaminaBar
	Stamina.Active = true
	Stamina.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
	Stamina.BorderSizePixel = 0

	StaminaUICorner.Name = "StaminaUICorner"
	StaminaUICorner.Parent = Stamina

	ImagePlayer.Name = "ImagePlayer"
	ImagePlayer.Parent = MainFrame3
	ImagePlayer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImagePlayer.BackgroundTransparency = 1.000
	ImagePlayer.Position = UDim2.new(0.0334346518, 0, 0.1, 0)
	ImagePlayer.Size = UDim2.new(0, 65, 0, 65)

	ImagePlayerUICorner.CornerRadius = UDim.new(0, 30)
	ImagePlayerUICorner.Name = "ImagePlayerUICorner"
	ImagePlayerUICorner.Parent = ImagePlayer

	TextName.Name = "TextName"
	TextName.Parent = MainFrame3
	TextName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextName.BackgroundTransparency = 1.000
	TextName.Position = UDim2.new(0.255319148, 0, 0.127906978, 0)
	TextName.Size = UDim2.new(0, 241, 0, 16)
	TextName.Font = Enum.Font.Gotham
	TextName.Text = "Name : "
	TextName.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextName.TextSize = 11.000
	TextName.TextWrapped = true
	TextName.TextXAlignment = Enum.TextXAlignment.Left

	TextHealth.Name = "TextHealth"
	TextHealth.Parent = MainFrame3
	TextHealth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextHealth.BackgroundTransparency = 1.000
	TextHealth.Position = UDim2.new(0.255319148, 0, 0.313953489, 0)
	TextHealth.Size = UDim2.new(0, 241, 0, 16)
	TextHealth.Font = Enum.Font.Gotham
	TextHealth.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextHealth.TextSize = 11.000
	TextHealth.TextWrapped = true
	TextHealth.TextXAlignment = Enum.TextXAlignment.Left

	TextStamina.Name = "TextHealth"
	TextStamina.Parent = MainFrame3
	TextStamina.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextStamina.BackgroundTransparency = 1.000
	TextStamina.Position = UDim2.new(0.75, 0, 0.313953489, 0)
	TextStamina.Size = UDim2.new(0, 241, 0, 16)
	TextStamina.Font = Enum.Font.Gotham
	TextStamina.TextColor3 = Color3.fromRGB(85, 170, 255)
	TextStamina.TextSize = 11.000
	TextStamina.TextWrapped = true
	TextStamina.TextXAlignment = Enum.TextXAlignment.Left

	local Button = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local Icon = Instance.new("ImageLabel")

	--Properties:

	Button.Name = "Button"
	Button.Parent = MainFrame2
	Button.BackgroundColor3 = Color3.fromRGB(35,35,35)
	Button.Position = UDim2.new(0.927051663, 0, 0.0348837227, 0)
	Button.Size = UDim2.new(0, 20, 0, 20)
	Button.Font = Enum.Font.SourceSans
	Button.Text = ""
	Button.TextColor3 = Color3.fromRGB(0, 0, 0)
	Button.TextSize = 14.000
	Button.BackgroundTransparency = 1
	Button.AutoButtonColor = false

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Button

	Icon.Name = "Icon"
	Icon.Parent = Button
	Icon.BackgroundTransparency = 1.000
	Icon.Position = UDim2.new(0.03, 0, 0, 0)
	Icon.Size = UDim2.new(1, 0, 1, 0)
	Icon.Image = "rbxassetid://7072720870"
	Icon.ImageColor3 = Color3.fromRGB(255,255,255)

	local Button2 = Instance.new("TextButton")
	local UICorner2 = Instance.new("UICorner")
	local Icon2 = Instance.new("ImageLabel")

	--Properties:

	Button2.Name = "Button"
	Button2.Parent = MainFrame2
	Button2.BackgroundColor3 = Color3.fromRGB(35,35,35)
	Button2.Position = UDim2.new(0.85, 0, 0.0348837227, 0)
	Button2.Size = UDim2.new(0, 20, 0, 20)
	Button2.Font = Enum.Font.SourceSans
	Button2.Text = ""
	Button2.TextColor3 = Color3.fromRGB(0, 0, 0)
	Button2.TextSize = 14.000
	Button2.BackgroundTransparency = 1
	Button2.AutoButtonColor = false

	UICorner2.CornerRadius = UDim.new(0, 4)
	UICorner2.Parent = Button2

	Icon2.Name = "Icon"
	Icon2.Parent = Button2
	Icon2.BackgroundTransparency = 1.000
	Icon2.Size = UDim2.new(1, 0, 1, 0)
	Icon2.Image = "rbxassetid://7072719338"
	Icon2.ImageColor3 = Color3.fromRGB(255,255,255)

	Toggle = false
	ToggleUI = false

	Button2.MouseEnter:Connect(function()
		if ToggleUI == false then
			TweenService:Create(
				Icon2,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ImageColor3 = Color3.fromRGB(255, 85, 127)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Button2,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 0} -- UDim2.new(0, 128, 0, 25)
			):Play()
		end
	end)

	Button2.MouseLeave:Connect(function()
		if ToggleUI == false then
			TweenService:Create(
				Icon2,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Button2,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
			):Play()
		end
	end)

	Button2.MouseButton1Click:Connect(function()
		if ToggleUI == false then
			Toggle = true
			TweenService:Create(
				Bounty_2,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Position = UDim2.new(-0.0151975686, 0, -0.03, 0)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Icon,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Rotation = 0} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				MainFrame,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Size = UDim2.new(0, 341, 0, 35)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			repeat wait() until MainFrame.Size == UDim2.new(0, 341, 0, 35)
			TweenService:Create(
				Button2,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Position = UDim2.new(0.85, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Button,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Position = UDim2.new(0.927051663, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				MainFrame2Stroke,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Transparency = 1} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Button2,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
			):Play()
		else
			Toggle = false
			TweenService:Create(
				Bounty_2,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Position = UDim2.new(-0.0151975686, 0, 0.0232558139, 0)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Button2,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Position = UDim2.new(0.85, 0, 0.0348837227, 0)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Button,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Position = UDim2.new(0.927051663, 0, 0.0348837227, 0)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				MainFrame2Stroke,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				MainFrame,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Size = UDim2.new(0, 341, 0, 103)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Button2,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 0} -- UDim2.new(0, 128, 0, 25)
			):Play()
		end
		ToggleUI = not ToggleUI
	end)

	Button.MouseEnter:Connect(function()
		if Toggle == false then
			TweenService:Create(
				Icon,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ImageColor3 = Color3.fromRGB(255, 85, 127)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Button,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 0} -- UDim2.new(0, 128, 0, 25)
			):Play()
		end
	end)
	Button.MouseLeave:Connect(function()
		if Toggle == false then
		TweenService:Create(
			Icon,
			TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Button,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
			):Play()
			end
	end)

	Button.MouseButton1Click:Connect(function()
		if Toggle == false then
			TweenService:Create(
				MainFrame2Stroke,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Icon,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Rotation = 135} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				MainFrame,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Size = UDim2.new(0, 341, 0, 198)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Button,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
			):Play()
		else
			TweenService:Create(
				MainFrame2Stroke,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Icon,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Rotation = 0} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				MainFrame,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{Size = UDim2.new(0, 341, 0, 103)} -- UDim2.new(0, 128, 0, 25)
			):Play()
			TweenService:Create(
				Button,
				TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundTransparency = 0} -- UDim2.new(0, 128, 0, 25)
			):Play()
		end
		Toggle = not Toggle
	end)


	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local ScreenGui = Instance.new("ScreenGui")
	local ImageLabel = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")

	--Properties:

	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

	ImageLabel.Parent = MainFrame2
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.Position = UDim2.new(0.03, 0, 0.15, 0)
	ImageLabel.Size = UDim2.new(0, 85, 0, 55)
	ImageLabel.Image = "rbxassetid://8774988831"
	UICorner.Parent = ImageLabel
	--- Heatlh Bar

	spawn(function()
		while wait(0.001) do
			pcall(function()
				TweenService:Create(
					Health,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth, 0, 1, 0)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end)
		end
	end)

	--- Stamina Text

	spawn(function()
		while wait(0.001) do 
			pcall(function()
				TextStamina.Text = game.Players.LocalPlayer.Character.Energy.Value.."/"..game.Players.LocalPlayer.Character.Energy.MaxValue
			end)
		end
	end)

	--- Health Text

	spawn(function()
		while wait(0.001) do 
			pcall(function()
				TextHealth.Text = game.Players.LocalPlayer.Character.Humanoid.Health.."/"..game.Players.LocalPlayer.Character.Humanoid.MaxHealth
			end)
		end
	end)

	--- Name Text

	spawn(function()
		while wait(0.001) do 
			pcall(function()
				TextName.Text = "NAME : "+" : "..game.Players.LocalPlayer.DisplayName
			end)
		end
	end)

	--- Stamina Text

	spawn(function()
		while wait(0.001) do
			pcall(function()
				TweenService:Create(
					Stamina,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(game.Players.LocalPlayer.Character.Energy.Value/game.Players.LocalPlayer.Character.Energy.MaxValue, 0, 1, 0)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end)
		end
	end)

	--- Bounty Count

	spawn(function()
		while wait(0.001) do
			pcall(function()
				CountBounty.Text = "                             Your Bounty    :  "..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value.."/ 25000000"
			end)
		end
	end)

	spawn(function()
		while wait(0.001) do
			pcall(function()
				Level.Text = "               Your Level      :  "..game:GetService("Players").LocalPlayer.Data.Level.Value.."/ 2300"
			end)--EXP
		end
	end)

	--- Image Player

	spawn(function()
		while wait(0.001) do
			pcall(function()
				ImagePlayer.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.userId, "HeadShot", "Size420x420")
			end)
		end
	end)

	MakeDraggable(MainFrame,MainFrame)

	_G.AutoFarm = true
	_G.FastAttack = true
	_G.EquipMelee = true

	function topos(Para1)
		Distance = (Para1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance < 300 then
			Speed = 999999999
		elseif Distance < 1000 then
			Speed = 300
		elseif Distance >= 1000 then
			Speed = 300
		end
		pcall(function()
			game:GetService("TweenService"):Create(
				game.Players.LocalPlayer.Character.HumanoidRootPart,
				TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
				{CFrame = Para1}
			):Play()
		end)
	end


			_G.Auto_Farm = true
			spawn(function()
				pcall(function()
					game:GetService("RunService").Heartbeat:Connect(function()
						if _G.Auto_Farm == true then
							if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
								local Noclip = Instance.new("BodyVelocity")
								Noclip.Name = "BodyClip"
								Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
								Noclip.MaxForce = Vector3.new(100000,100000,100000)
								Noclip.Velocity = Vector3.new(0,0,0)
							end
						end
					end)
				end)
			end)
		
			spawn(function()
				game:GetService("RunService").Stepped:Connect(function()
					pcall(function()
						if _G.Auto_Farm == true then
							for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
								if v:IsA("BasePart") then
									v.CanCollide = false    
								end
							end
						end
					end)
				end)
			end)
				
			function Check()
				local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
				if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit [Lv. 5]" then -- Bandit
					Mon = "Bandit [Lv. 5]"
					NameQuest = "BanditQuest1"
					LevelQuest = 1
					NameMon = "Bandit"
					CFrameQuestuest = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
					CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
				elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey [Lv. 14]" then -- Monkey
					Mon = "Monkey [Lv. 14]"
					NameQuest = "JungleQuest"
					LevelQuest = 1
					NameMon = "Monkey"
					CFrameQuestuest = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
					CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
				elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla [Lv. 20]" then -- Gorilla
					Mon = "Gorilla [Lv. 20]"
					NameQuest = "JungleQuest"
					LevelQuest = 2
					NameMon = "Gorilla"
					CFrameQuestuest = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
					CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
				elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate [Lv. 35]" then -- Pirate
					Mon = "Pirate [Lv. 35]"
					NameQuest = "BuggyQuest1"
					LevelQuest = 1
					NameMon = "Pirate"
					CFrameQuestuest = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
					CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
				elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute [Lv. 45]" then -- Brute
					Mon = "Brute [Lv. 45]"
					NameQuest = "BuggyQuest1"
					LevelQuest = 2
					NameMon = "Brute"
					CFrameQuestuest = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
					CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
				elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit [Lv. 60]" then -- Desert Bandit
					Mon = "Desert Bandit [Lv. 60]"
					NameQuest = "DesertQuest"
					LevelQuest = 1
					NameMon = "Desert Bandit"
					CFrameQuestuest = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
					CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
				elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer [Lv. 70]" then -- Desert Officer
					Mon = "Desert Officer [Lv. 70]"
					NameQuest = "DesertQuest"
					LevelQuest = 2
					NameMon = "Desert Officer"
					CFrameQuestuest = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
					CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
				elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit [Lv. 90]" then -- Snow Bandit
					Mon = "Snow Bandit [Lv. 90]"
					NameQuest = "SnowQuest"
					LevelQuest = 1
					NameMon = "Snow Bandit"
					CFrameQuestuest = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
					CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
				elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman [Lv. 100]" then -- Snowman
					Mon = "Snowman [Lv. 100]"
					NameQuest = "SnowQuest"
					LevelQuest = 2
					NameMon = "Snowman"
					CFrameQuestuest = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
					CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
				elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer [Lv. 120]" then -- Chief Petty Officer
					Mon = "Chief Petty Officer [Lv. 120]"
					NameQuest = "MarineQuest2"
					LevelQuest = 1
					NameMon = "Chief Petty Officer"
					CFrameQuestuest = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
					CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
				elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit [Lv. 150]" then -- Sky Bandit
					Mon = "Sky Bandit [Lv. 150]"
					NameQuest = "SkyQuest"
					LevelQuest = 1
					NameMon = "Sky Bandit"
					CFrameQuestuest = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
					CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
				elseif Lv == 175 or Lv <= 249 or SelectMonster == "Dark Master [Lv. 175]" then -- Dark Master
					Mon = "Dark Master [Lv. 175]"
					NameQuest = "SkyQuest"
					LevelQuest = 2
					NameMon = "Dark Master"
					CFrameQuestuest = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
					CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
				elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior [Lv. 250]" then -- Toga Warrior
					Mon = "Toga Warrior [Lv. 250]"
					NameQuest = "ColosseumQuest"
					LevelQuest = 1
					NameMon = "Toga Warrior"
					CFrameQuestuest = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
					CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
				elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator [Lv. 275]" then -- Gladiator
					Mon = "Gladiator [Lv. 275]"
					NameQuest = "ColosseumQuest"
					LevelQuest = 2
					NameMon = "Gladiator"
					CFrameQuestuest = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
					CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
				elseif Lv == 300 or Lv <= 329 or SelectMonster == "Military Soldier [Lv. 300]" then -- Military Soldier
					Mon = "Military Soldier [Lv. 300]"
					NameQuest = "MagmaQuest"
					LevelQuest = 1
					NameMon = "Military Soldier"
					CFrameQuestuest = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
					CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
				elseif Lv == 330 or Lv <= 374 or SelectMonster == "Military Spy [Lv. 330]" then -- Military Spy
					Mon = "Military Spy [Lv. 330]"
					NameQuest = "MagmaQuest"
					LevelQuest = 2
					NameMon = "Military Spy"
					CFrameQuestuest = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
					CFrameMon = CFrame.new(-5984.0532226563, 82.14656829834, 8753.326171875)
					end
				end

					
			function Buso()
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				end
			end
			
	--     	while wait() do
	-- 		if Auto_Farm then
	-- 			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
	-- 				MagnetActive = false
	-- 				CheckLevel()
	-- 				TP(CFrameQ)
	-- 				if (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
	-- 					wait(1.1)
	-- 					CheckLevel()
	-- 					if (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
	-- 						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
	-- 						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
	-- 					else
	-- 						TP(CFrameQ)
	-- 					end
	-- 				end
	-- 			elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
	-- 				pcall(function()
	-- 					CheckLevel()
	-- 					if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
	-- 						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	-- 						    for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	--     							if v.Name == Ms and v:FindFirstChild("Humanoid") then
	--     							    if y.Name == Ms and v:FindFirstChild("Humanoid") then
	--         								if v.Humanoid.Health > 0 then
	--         									repeat game:GetService("RunService").Heartbeat:wait()
	--         										if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
	--         											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
			
			function UseCode(Text)
				game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
			end
			UseCode("UPD16")
			UseCode("2BILLION")
			UseCode("UPD15")
			UseCode("FUDD10")
			UseCode("BIGNEWS")
			UseCode("THEGREATACE")
			UseCode("SUB2GAMERROBOT_EXP1")
			UseCode("StrawHatMaine")
			UseCode("Sub2OfficialNoobie")
			UseCode("SUB2NOOBMASTER123")
			UseCode("Sub2Daigrock")
			UseCode("Axiore")
			UseCode("TantaiGaming")
			UseCode("STRAWHATMAINE") 
			UseCode("3BVISITS") 
			UseCode("Fudd10 ") 
			UseCode("Fudd10_v2 ") 
			UseCode("Bignews ") 
			UseCode("TantaiGaming") 
			
			spawn(function()
				while task.wait() do
				local args = {
					[1] = "AddPoint",
					[2] = "Melee",
					[3] = 1
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end)
			
			Type = 1
			spawn(function()
				while wait(.1) do
					if Type == 1 then
						Farm_Mode = CFrame.new(0, 15, 0)
					elseif Type == 2 then
						Farm_Mode = CFrame.new(0, 0, 15)
					elseif Type == 3 then
						Farm_Mode = CFrame.new(15, 0, 0)
					elseif Type == 4 then
						Farm_Mode = CFrame.new(0, 0, -15)
					elseif Type == 5 then
						Farm_Mode = CFrame.new(-15, 0, 0)
					end
				end
			end)
			
			spawn(function()
				while wait(.1) do
					Type = 1
					wait(.3)
					Type = 2
					wait(.3)
					Type = 3
					wait(.3)
					Type = 4
					wait(.3)
					Type = 5
					wait(.3)
				end
			end)
			
			function mobinvisble()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if v.ClassName == "MeshPart" then
						v.Transparency = 1
					end
				end
				for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if v.Name == "Head" then
						v.Transparency = 1
					end
				end
				for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if v.ClassName == "Accessory" then
						v.Handle.Transparency = 1
					end
				end
				for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if v.ClassName == "Decal" then
						v.Transparency = 1
					end
				end
			end
			
			function EquipToolm()
				-- while wait() do
				if _G.EquipMelee == true then
					pcall(function()
						for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
						if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							local ToolSe = tostring(v.Name)
							local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
							wait(.4)
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
						end
						end
						end
					end)
				end
				-- end
			end

			
			spawn(function()
				while wait() do
					if _G.AutoFarm then
						pcall(function()
							Check()
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								MagnetLv = false
								Check()
								repeat wait() topos(CFrameQuestuest) until (CFrameQuestuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 or not _G.AutoFarm
								if (CFrameQuestuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
									wait(1.1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
									-- wait(0.5)
								else
									topos(CFrameQuestuest)
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											if v.Name == Mon then
												if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
													repeat task.wait()
														EquipToolm()
														Buso()
														-- if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
														PosMon = v.HumanoidRootPart.CFrame
														topos(PosMon * Farm_Mode)
														-- end
														mobinvisble()
														v.HumanoidRootPart.CanCollide = false
														v.Head.CanCollide = false
														MagnetLv = true
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
												else
													MagnetLv = false
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
												end
											end
										end
									end
								else
									MagnetLv = false
									if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
										topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * Farm_Mode)
									end
								end
							end
						end)
					end
				end
			end)
			
			spawn(function()
				while task.wait() do
					pcall(function()
						Check()
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if _G.AutoFarm and MagnetLv and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]" or Mon == "Head Baker [Lv. 2275]" or Mon == "Baking Staff [Lv. 2250]" or Mon == "Cake Guard [Lv. 2225]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
							elseif _G.AutoFarm and MagnetLv and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 275 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end)
			local Module = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
			local CombatFramework = debug.getupvalues(Module)[2]
			local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
			spawn(function()
				while true do
					if _G.FastAttack then
						pcall(function()
							CameraShakerR:Stop()
							CombatFramework.activeController.attacking = false
							CombatFramework.activeController.timeToNextAttack = 0
							CombatFramework.activeController.increment = 3
							CombatFramework.activeController.hitboxMagnitude = 100
							CombatFramework.activeController.blocking = false
							CombatFramework.activeController.timeToNextBlock = 0
							CombatFramework.activeController.focusStart = 0
							CombatFramework.activeController.humanoid.AutoRotate = true
						end)
					end
					task.wait()
				end
			end)
else
	game.Players.LocalPlayer:kick("ไอ่ควาย")
end
