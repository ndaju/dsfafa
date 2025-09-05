-- This is a LocalScript intended to be placed in StarterPlayerScripts.
-- Its purpose is to move a specific ScreenGui named "ScreenGui" from CoreGui to the player's PlayerGui.

-- Get essential Roblox services and the local player.
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

-- Check if we are running in a client environment.
if not RunService:IsClient() then
	return
end

-- Wait for the player and their PlayerGui to be fully loaded.
local playerGui = player:WaitForChild("PlayerGui")

-- Since CoreGui is a service, we can access it directly.
local coreGui = game:GetService("CoreGui")

-- Try to find the specific ScreenGui named "ScreenGui".
local guiToMove = coreGui:FindFirstChild("ScreenGui")

-- Check if the ScreenGui was found and is the correct type.
if guiToMove and guiToMove:IsA("ScreenGui") then
	-- If found, move only this specific ScreenGui.
	guiToMove.Parent = playerGui
	print("Successfully moved the specific ScreenGui named 'ScreenGui' to PlayerGui.")
else
	-- If the specific ScreenGui was not found, print a warning message.
	warn("Could not find a ScreenGui instance named 'ScreenGui' in CoreGui.")
end
