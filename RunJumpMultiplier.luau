local part = script.Parent
local isrunning = false

part.Touched:Connect(function(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid and isrunning == false then
		isrunning = true
		local playerWalkSpeed = humanoid.WalkSpeed
		local playerJumpPower = humanoid.JumpPower
		humanoid.WalkSpeed = playerWalkSpeed + 50
		humanoid.JumpPower = playerJumpPower + 100
		print(character.Name .. " now has a walk speed of " .. playerWalkSpeed .. " and a jump power of " .. playerJumpPower .. ".")
		part.Transparency = 100
		part.CollisionGroup = "NoCollide"
		task.wait(5)
		part.Transparency = 0
		part.CollisionGroup = "Default"
		isrunning = false
	end
end)