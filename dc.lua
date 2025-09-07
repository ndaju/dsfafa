local link = "https://discord.gg/cuwKyeuCVR"

		if link then
			setclipboard(link)
			submittext("Link Copied, Paste In Browser")
		else
			submittext("Failed to Retrieve Link")
		end
-- Version: 3.6

-- Instances:

local PopUp2 = Instance.new("ScreenGui")
local FramePopUp2 = Instance.new("Frame")
local CloseButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local ImageButton = Instance.new("ImageButton")
local OpenButton = Instance.new("ImageButton")

-- Properties:

PopUp2.Name = "PopUp2"
PopUp2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
PopUp2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FramePopUp2.Name = "FramePopUp2"
FramePopUp2.Parent = PopUp2
FramePopUp2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FramePopUp2.BorderColor3 = Color3.fromRGB(0, 0, 0)
FramePopUp2.BorderSizePixel = 0
FramePopUp2.Position = UDim2.new(0.335960776, 0, 0.275924951, 0)
FramePopUp2.Size = UDim2.new(0, 276, 0, 247)

CloseButton.Name = "CloseButton"
CloseButton.Parent = FramePopUp2
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 136, 17)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.0858208984, 0, 0.719626188, 0)
CloseButton.Size = UDim2.new(0, 222, 0, 38)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "Copy Discord Link And Close"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextScaled = true
CloseButton.TextSize = 14.000
CloseButton.TextWrapped = true

CloseButton.MouseButton1Click:Connect(function()
print("closae")
end)



UICorner.Parent = CloseButton

UICorner_2.Parent = FramePopUp2

TextLabel.Parent = FramePopUp2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.12686567, 0, 0.322429895, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Join HackManHub Discord"
TextLabel.TextColor3 = Color3.fromRGB(255, 163, 3)
TextLabel.TextScaled = true
TextLabel.TextSize = 19.000
TextLabel.TextWrapped = true

ImageButton.Parent = FramePopUp2
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.350746274, 0, 0.0467289723, 0)
ImageButton.Size = UDim2.new(0, 80, 0, 59)
ImageButton.Image = "rbxassetid://76181608348088"

OpenButton.Name = "OpenButton"
OpenButton.Parent = PopUp2
OpenButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.BorderSizePixel = 0
OpenButton.Position = UDim2.new(0.059294872, 0, 0.733564019, 0)
OpenButton.Size = UDim2.new(0, 73, 0, 70)
OpenButton.Image = "rbxassetid://97586464181056"

-- Scripts:

local function LPGJAI_fake_script() -- CloseButton.LocalScript1 
	local script = Instance.new('LocalScript', CloseButton)

	
	-- Warning: This script was automatically generated using the EventBlocks plugin.
	
	-- Any modification to this script using Roblox’s default scripting editor may result in a broken script in the EventBlocks editor.
	-- Therefore, to edit this please use EventBlocks (find on devforum)
	
	
	
	
	
	-- Do not modify anything below here! --
	
	coroutine.wrap(function()
	--START--
	script.Parent.InputBegan:Connect(function(EB_inp)
		if EB_inp.UserInputType == Enum.UserInputType.MouseButton1 then
			local EB_MSG_V = Instance.new("IntValue")
			EB_MSG_V.Name = "EB_MSG_"..tostring((tostring([[C]])))
			EB_MSG_V.Parent = game.ReplicatedStorage
		end
	end)
	
	-------
	end)()
	coroutine.wrap(function()
		game.ReplicatedStorage.ChildAdded:Connect(function(EB_c)
		if EB_c.Name == "EB_MSG_"..tostring((tostring([[C]]))) then
			spawn(function()
				task.wait(1)
				EB_c:Destroy()
			end)
			script.Parent.Parent.Visible = false
	
		end
	end)
	end)()
	
end
coroutine.wrap(LPGJAI_fake_script)()
local function KVDNOU_fake_script() -- OpenButton.UIDrag 
	local script = Instance.new('LocalScript', OpenButton)

	-- Made by Real_IceyDev (@lceyDex) --
	-- Simple UI dragger (PC Only/Any device that has a mouse) --
	
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(KVDNOU_fake_script)()
local function QQSG_fake_script() -- OpenButton.LocalScript1 
	local script = Instance.new('LocalScript', OpenButton)

	
	-- Warning: This script was automatically generated using the EventBlocks plugin.
	
	-- Any modification to this script using Roblox’s default scripting editor may result in a broken script in the EventBlocks editor.
	-- Therefore, to edit this please use EventBlocks (find on devforum)
	
	
	
	
	
	-- Do not modify anything below here! --
	
	coroutine.wrap(function()
	--START--
	script.Parent.InputBegan:Connect(function(EB_inp)
		if EB_inp.UserInputType == Enum.UserInputType.MouseButton1 then
			local EB_MSG_V = Instance.new("IntValue")
			EB_MSG_V.Name = "EB_MSG_"..tostring((tostring([[D]])))
			EB_MSG_V.Parent = game.ReplicatedStorage
		end
	end)
	
	-------
	end)()
	coroutine.wrap(function()
		game.ReplicatedStorage.ChildAdded:Connect(function(EB_c)
		if EB_c.Name == "EB_MSG_"..tostring((tostring([[D]]))) then
			spawn(function()
				task.wait(1)
				EB_c:Destroy()
			end)
			script.Parent.Parent:FindFirstChild('FramePopUp2').Visible = true
	
		end
	end)
	end)()
	
end
coroutine.wrap(QQSG_fake_script)()
