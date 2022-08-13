--// Variables

local plr = game.Players.LocalPlayer
local char = plr.Character

--// Main function

plr.Chatted:Connect(function(ms)
	if ms == "DEATH." then
		coroutine.wrap(function()
				repeat 
					for i = 1, 1 do 
						 for i = 1, 222 do
							coroutine.wrap(function()
								local args = {
									[1] = "hit",
									[2] = {
										["char"] = game:GetService("Players").LocalPlayer.Character,
										["target"] = workspace.Global["NPCs Infernal Arena"]["nacker"]
									}
								}
							
								game:GetService("Players").LocalPlayer.Character:FindFirstChild("Titan's Golden Axe").Use:InvokeServer(unpack(args))
							end)()
						end
					end
					
					task.wait(0.1)
					
				until workspace.Global["NPCs Infernal Arena"]["nacker"].Humanoid.Health == 0
			end
		end)()
	end
end)
