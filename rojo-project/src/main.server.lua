-- main.server.lua

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function onPlayerJoin(player)
    print(player.Name .. " has joined the game!")
    
    -- Create a object
    local customObject = Instance.new("Part")
    customObject.Name = "WelcomePart"
    customObject.Size = Vector3.new(4, 1, 4)
    customObject.Position = Vector3.new(0, 10, 0)
    customObject.Parent = ReplicatedStorage
    
    -- Animate the object that we created
    customObject.Anchored = true
    customObject.Color = Color3.fromRGB(0, 255, 0)
end

game.Players.PlayerAdded:Connect(onPlayerJoin)

