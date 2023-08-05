print("Finding Game Id... (0/5)") then
print("Game Id Found! (1/5)") then
print("Checking Script... (1.5/5)") then
print("Script Checked Can Continue. (2/5)") then
print("Assets Loaded (3/5)") then
print("Scripts Loaded (4/5)") then
print("Verx has been loaded have fun! (5/5)")


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/VerxStudios/UiLibrary/main/OrionMobileVerx')))()
                
local Window = OrionLib:MakeWindow({Name = "Verx | Slap Battles", HidePremium = true, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

                local Tab = Window:MakeTab({
                    Name = "Home",
                    Icon = "http://www.roblox.com/asset/?id=4370345144",
                    PremiumOnly = false
                })

                local Tab2 = Window:MakeTab({
                    Name = "Combat",
                    Icon = "http://www.roblox.com/asset/?id=7733674079",
                    PremiumOnly = false
                })

                local Tab3 = Window:MakeTab({
                    Name = "Antis",
                    Icon = "http://www.roblox.com/asset/?id=7734056608",
                    PremiumOnly = false
                })

                local Tab4 = Window:MakeTab({
                    Name = "Misc",
                    Icon = "http://www.roblox.com/asset/?id=4370318685",
                    PremiumOnly = false
                })

                local Tab5 = Window:MakeTab({
                    Name = "Badges",
                    Icon = "http://www.roblox.com/asset/?id=4335482575",
                    PremiumOnly = false
                })

                local Tab6 = Window:MakeTab({
                    Name = "Player",
                    Icon = "rbxassetid://7743878148",
                    PremiumOnly = false
                })

                local Tab7 = Window:MakeTab({
                    Name = "Script Hub",
                    Icon = "http://www.roblox.com/asset/?id=4370344717",
                    PremiumOnly = false
                })
				
				local Tab8 = Window:MakeTab({
                    Name = "Kicks",
                    Icon = "rbxassetid://7743878056",
                    PremiumOnly = false
                })

Tab:AddLabel("If you want Support then contact .thepixelatedev#2132")

Tab:AddButton({
	Name = "Rejoin",
	Callback = function()
      		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
  	end    
})

Tab:AddButton({
	Name = "Destroy UI",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})

Tab4:AddButton({
	Name = "Teleport to Testing Server",
	Callback = function()
local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        local localPlr = game:GetService("Players").LocalPlayer
        repeat wait() until localPlr
        game:GetService("RunService").RenderStepped:Connect(function()
            game:GetService("GuiService"):ClearError()
        end)
    ]])
end
game:GetService("TeleportService"):Teleport(9020359053)
                    end    
                })

Tab4:AddButton({
	Name = "Teleport to SR Testing Server",
	Callback = function()
local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        local localPlr = game:GetService("Players").LocalPlayer
        repeat wait() until localPlr
        game:GetService("RunService").RenderStepped:Connect(function()
            game:GetService("GuiService"):ClearError()
        end)
    ]])
end
game:GetService("TeleportService"):Teleport(9412268818)
                    end    
                })

Tab4:AddButton({
	Name = "TestingServer FreeCam (Computer)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/SB%20Freecam"))()
                    end    
                })
				
Tab4:AddButton({
	Name = "TestingServer FreeCam (Mobile)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zephyr10101/CameraSpy/main/Script", true))()
                    end    
                })

Tab2:AddToggle({
                    Name = "Slap Aura | Work Without Glove",
                    Default = false,
                    Callback = function(Value)
_G.SlapAura = Value
                while _G.SlapAura do
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil or game.Players.LocalPlayer.leaderstats.Glove == "Error" then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if 25 >= Magnitude then
shared.gloveHits[getGlove()]:FireServer(v.Character:WaitForChild("Head"),true)
                    end
end
end
end
                end
task.wait()
end
end
                })

Tab2:AddButton({
	Name = "GodMode | Breaks KS & RP and Resets",
	Callback = function()
if game.Players.LocalPlayer.Character.isInArena.Value == false then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
wait(0.5)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Tool" then
                        v.Parent = game.LogService
                    end
                end
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
wait(4)
for i,v in pairs(game.LogService:GetChildren()) do
                    if v.ClassName == "Tool" then
                        v.Parent = game.Players.LocalPlayer.Character
                    end
                end
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ClassName == "Tool" then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    end
                end 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Origo.CFrame
elseif game.Players.LocalPlayer.Character.isInArena.Value == true then
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Tool" then
                        v.Parent = game.LogService
                    end
                end
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
wait(4)
for i,v in pairs(game.LogService:GetChildren()) do
                    if v.ClassName == "Tool" then
                        v.Parent = game.Players.LocalPlayer.Character
                    end
                end
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ClassName == "Tool" then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    end
                end 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Origo.CFrame
end
                    end    
                })

                Tab2:AddToggle({
                    Name = "Rhythm Explosion Spam | Works With/Without any Glove",
                    Default = false,
                    Callback = function(Value)
_G.RhythmSpam = Value
while _G.RhythmSpam do
game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",0)
task.wait()
end
                    end    
                })

Tab2:AddToggle({
                    Name = "Rojo Spam | (Slow) Works All/Without Gloves",
                    Default = false,
                    Callback = function(Value)
if Person == nil then
Person = game.Players.LocalPlayer.Name
end
_G.RojoSpam = Value
while _G.RojoSpam do
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players[Person].Character.HumanoidRootPart.CFrame})
task.wait()
end
                    end    
                })

Tab2:AddTextbox({
	Name = "Make Player Use Rojo | Slow and Bug",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
if Value == "Me" or Value == "me" or Value == "Username" or Value == "" then
Person = game.Players.LocalPlayer.Name
else
Person = Value
end
	end	  
})

                Tab4:AddToggle({
                    Name = "Spam Error Sound | Not FE",
                    Default = false,
                    Callback = function(Value)
_G.ErrorSoundSpam = Value
while _G.ErrorSoundSpam do
game.ReplicatedStorage.ErrorDeath:FireServer()
task.wait()
end
                    end    
                })

                Tab2:AddToggle({
                    Name = "Ability Spam | Can work in lobby",
                    Default = false,
                    Callback = function(Value)
On = Value
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" do
game:GetService("ReplicatedStorage").Duplicate:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Fort" do
game:GetService("ReplicatedStorage").Fortlol:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Home Run" do
game:GetService("ReplicatedStorage").HomeRun:FireServer({["start"] = true})
game:GetService("ReplicatedStorage").HomeRun:FireServer({["finished"] = true})
task.wait()
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "🗿" do
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(CFrame.new(math.random(-70, 63), -5.72293854, math.random(-90, 93), 0.151493087, -8.89114702e-08, 0.988458335, 1.45089563e-09, 1, 8.97272727e-08, -0.988458335, -1.21589121e-08, 0.151493087))
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Shukuchi" do
local LocalPlayer = game.Players.LocalPlayer
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= LocalPlayer
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer.Character.isInArena.Value == true
PersonToKill = RandomPlayer
game:GetService("ReplicatedStorage").SM:FireServer(PersonToKill)
wait(0.01)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Slicer" do
game:GetService("ReplicatedStorage").Slicer:FireServer("sword")
game:GetService("ReplicatedStorage").Slicer:FireServer("slash", game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, Vector3.new())
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Rob" do
game:GetService("ReplicatedStorage"):WaitForChild("rob"):FireServer()
wait(15)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Kraken" do
game:GetService("ReplicatedStorage").KrakenArm:FireServer()
wait(5)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Psycho" do
game:GetService("ReplicatedStorage").Psychokinesis:InvokeServer({["grabEnabled"] = true})
task.wait()
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Killstreak" and game.Players.LocalPlayer.PlayerGui:FindFirstChild("Kills") and game.Players.LocalPlayer.PlayerGui.Kills.Frame.TextLabel.Text >= "75" do
game:GetService("ReplicatedStorage").KSABILI:FireServer()
wait(6.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Bus" do
game:GetService("ReplicatedStorage").busmoment:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Mitten" do
game:GetService("ReplicatedStorage").MittenA:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Fort" do
game:GetService("ReplicatedStorage").Fortlol:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Defense" do
game:GetService("ReplicatedStorage").Barrier:FireServer()
wait(0.25)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Bomb" do
game:GetService("ReplicatedStorage").BombThrow:FireServer()
wait(2.5)
game:GetService("ReplicatedStorage").BombThrow:FireServer()
wait(4.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" do
game:GetService("ReplicatedStorage").Duplicate:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Pusher" do
game:GetService("ReplicatedStorage").PusherWall:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Jet" do
local LocalPlayer = game.Players.LocalPlayer
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= LocalPlayer
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer.Character.isInArena.Value == true
PersonToKill = RandomPlayer
game:GetService("ReplicatedStorage").AirStrike:FireServer(PersonToKill.Character)
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Tableflip" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Shield" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Rocky" do
game:GetService("ReplicatedStorage").RockyShoot:FireServer()
wait(6.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "God's Hand" do
game:GetService("ReplicatedStorage").TimestopJump:FireServer()
game:GetService("ReplicatedStorage").Timestopchoir:FireServer()
game:GetService("ReplicatedStorage").Timestop:FireServer()
wait(50.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Za Hando" do
game:GetService("ReplicatedStorage").Erase:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Baller" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(4.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Glitch" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(4.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Stun" do
game:GetService("ReplicatedStorage").StunR:FireServer(game:GetService("Players").LocalPlayer.Character.Stun)
wait(10.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "STOP" do
game:GetService("ReplicatedStorage").STOP:FireServer(true)
wait(4.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Track" do
local LocalPlayer = game.Players.LocalPlayer
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= LocalPlayer
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer.Character.isInArena.Value == true
PersonToKill = RandomPlayer
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(PersonToKill.Character)
wait(10.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Mail" do
game:GetService("ReplicatedStorage").MailSend:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Shard" do
game:GetService("ReplicatedStorage").Shards:FireServer()
wait(4.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Swapper" do
game:GetService("ReplicatedStorage").SLOC:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Bubble" do
game:GetService("ReplicatedStorage").BubbleThrow:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Slapple" do
game:GetService("ReplicatedStorage").funnyTree:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Kinetic" do
game:GetService("ReplicatedStorage").KineticExpl:FireServer(game:GetService("Players").LocalPlayer.Character.Kinetic, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
wait(9.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Dominance" do
game:GetService("ReplicatedStorage").DominanceAc:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "[REDACTED]" do
game:GetService("ReplicatedStorage").Well:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Duelist" do
game:GetService("ReplicatedStorage").DuelistAbility:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Engineer" do
game:GetService("ReplicatedStorage").Sentry:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Brick" do
game:GetService("ReplicatedStorage").lbrick:FireServer()
wait(1.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Trap" do
game:GetService("ReplicatedStorage").funnyhilariousbeartrap:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "woah" do
game:GetService("ReplicatedStorage").VineThud:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Ping Pong" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Recall" do
game:GetService("ReplicatedStorage").Recall:InvokeServer(game:GetService("Players").LocalPlayer.Character.Recall)
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "ZZZZZZZ" do
game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
task.wait()
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Charge" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game:GetService("Players").LocalPlayer.Character.Charge)
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Coil" do
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(game:GetService("Players").LocalPlayer.Character.Coil)
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Diamond" do
game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
task.wait()
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Excavator" do
game:GetService("ReplicatedStorage"):WaitForChild("Excavator"):InvokeServer()
game:GetService("ReplicatedStorage"):WaitForChild("ExcavatorCancel"):FireServer()
wait(7.3)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Thor" do
game:GetService("ReplicatedStorage").ThorAbility:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
task.wait()
end
                    end   
})

Tab2:AddButton({
	Name = "Kick Player | Only Za Hando (Sometimes dont work)",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Za Hando" then
OGWS = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
OGJP = game.Players.LocalPlayer.Character.Humanoid.JumpPower
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                    if v.ClassName == "Part" then
                        v.CanTouch = false
                    end
                end
game:GetService("ReplicatedStorage").Erase:FireServer()
wait(0.47)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(1022,213.8,1498)
wait(3.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.Rock.CFrame
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = OGWS
game.Players.LocalPlayer.Character.Humanoid.JumpPower = OGJP
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                    if v.ClassName == "Part" then
                        v.CanTouch = true
                    end
                end
else
game.StarterGui:SetCore("SendNotification", {
                Title = "Hey!";
                Duration = 5;
                Text = "You don't have Za Hando equipped.";
            })
end
                    end    
                })

Tab4:AddButton({
	Name = "Give Reaper Kills | (20) Only With The Effect.",
	Callback = function()
for i = 1, 20 do
        game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(x,false)
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.Name == "DeathMark" then
                    game:GetService("ReplicatedStorage").ReaperGone:FireServer(game:GetService("Players").LocalPlayer.Character.DeathMark)
                    game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 
                    end 
                end
                    end    
                })

                Tab4:AddToggle({
                    Name = "AutoClick Tycoon",
                    Default = false,
                    Callback = function(Value)
_G.AutoTycoon = Value
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "End" and v.ClassName == "Part" then
            v.Size = Vector3.new(28, 0.3, 4)
        end
    end
while _G.AutoTycoon do
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Click" and v:FindFirstChild("ClickDetector") then
            fireclickdetector(v.ClickDetector)
        end
    end
    task.wait()
end
                    end    
                })

                Tab4:AddToggle({
                    Name = "Rhythm Note Spam & Auto | Only Rhythm",
                    Default = false,
                    Callback = function(Value)
_G.RhythmNoteSpam = Value
while _G.RhythmNoteSpam do
game.Players.LocalPlayer.PlayerGui.Rhythm.LocalScript.Disabled = false
game.Players.LocalPlayer.PlayerGui.Rhythm.LocalScript.Disabled = true
game.Players.LocalPlayer.Character.Rhythm:Activate()
task.wait()
end
                    end    
                })

Tab2:AddToggle({
                    Name = "Auto Arena",
                    Default = false,
                    Callback = function(Value)
local localPlr = game:GetService("Players").LocalPlayer
getgenv().AutoEnterArena = Value
      while getgenv().AutoEnterArena == true do
       wait(.001)
if not localPlr.Character:FindFirstChild("entered") and localPlr.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
    end
end
end,
                })

Tab4:AddToggle({
                    Name = "No Nametag | Bug & Breaks KS",
                    Default = false,
                    Callback = function(Value)
_G.AutoRemoveNameTag = Value
        if _G.AutoRemoveNameTag then
        game.Players.LocalPlayer.Character:FindFirstChild("Head").Nametag.TextLabel:Destroy()
            game.Players.LocalPlayer.CharacterAdded:Connect(function()
                if _G.AutoRemoveNameTag then
                repeat task.wait()
                until game.Players.LocalPlayer.Character:FindFirstChild("Head")
                game.Players.LocalPlayer.Character:FindFirstChild("Head").Nametag.TextLabel:Destroy()
                end
            end)
        end
end
                })



Tab4:AddButton({
	Name = "Rojo Charge VFX | Fling if spammed ",
	Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Charge")
wait(6)
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame}
                    end    
                })

Tab4:AddButton({
	Name = "Inf Golden | Arena Only",
	Callback = function()
game:GetService("ReplicatedStorage").Goldify:FireServer(true)
                    end    
                })

                Tab4:AddToggle({
                    Name = "Inf Reverse | Arena Only",
                    Default = false,
                    Callback = function(Value)
_G.InfReverse = Value
while _G.InfReverse do
game:GetService("ReplicatedStorage").ReverseAbility:FireServer()
wait(6)
end
                    end    
                })

Tab4:AddToggle({
                    Name = "Rainbow Character | Golden Only",
                    Default = false,
                    Callback = function(Value)
_G.Rainbow = Value
while _G.Rainbow do
for i = 0,1,0.001*25 do
game:GetService("ReplicatedStorage").Goldify:FireServer(false, BrickColor.new(Color3.fromHSV(i,1,1)))
task.wait()
end
end
end
                })

Tab4:AddButton({
	Name = "Destroy Tycoons | Destroys all Tycoons.",
	Callback = function()
for i = 1, 110 do
 for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Destruct" and v:FindFirstChild("ClickDetector") then
            fireclickdetector(v.ClickDetector)
        end
    end
task.wait()
end
                    end    
                })

Tab4:AddTextbox({
	Name = "Equip Glove | Lobby Only",
	Default = "Glove Name",
	TextDisappear = true,
	Callback = function(Value)
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
		fireclickdetector(workspace.Lobby[Value].ClickDetector)
end
	end	  
})

Tab4:AddButton({
	Name = "Safe Zone | TP",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,50,0)
  	end    
})

Tab4:AddButton({
	Name = "Back to Arena | TP",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.Rock.CFrame
  	end    
})

                Tab4:AddToggle({
                    Name = "Spam Space Sound | FE or Not Fe",
                    Default = false,
                    Callback = function(Value)
_G.SpaceSoundSpam = Value
while _G.SpaceSoundSpam do
game:GetService("ReplicatedStorage").ZeroGSound:FireServer()
task.wait()
end
                    end    
                })

                Tab4:AddToggle({
                    Name = "Spam Thanos Sound | FE or Not Fe",
                    Default = false,
                    Callback = function(Value)
_G.ThanosSoundSpam = Value
while _G.ThanosSoundSpam do
game:GetService("ReplicatedStorage").Illbeback:FireServer()
task.wait()
end
                    end    
                })

                Tab4:AddToggle({
                    Name = "Spam Golden Sound | FE or Not Fe",
                    Default = false,
                    Callback = function(Value)
_G.GoldenSoundSpam = Value
while _G.GoldenSoundSpam do
game:GetService("ReplicatedStorage").Goldify:FireServer(true)
task.wait()
end
                    end    
                })

                Tab4:AddToggle({
                    Name = "Spam Ghost Sound | FE or Not Fe",
                    Default = false,
                    Callback = function(Value)
_G.GhostSoundSpam = Value
while _G.GhostSoundSpam do
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
game.ReplicatedStorage.Ghostinvisibilitydeactivated:FireServer()
task.wait()
end
                    end    
                })

                Tab4:AddToggle({
                    Name = "Spam Hitman Sound | FE or Not Fe",
                    Default = false,
                    Callback = function(Value)
_G.HitmanSoundSpam = Value
while _G.HitmanSoundSpam do
game:GetService("ReplicatedStorage"):WaitForChild("HitmanAbility"):FireServer("ReplicateGoldenRevolver",{0})
task.wait()
end
                    end    
                })

Tab7:AddButton({
	Name = "CherryUi's Slap Battles GUI",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomScriptr3/gggggggg/main/lolez.txt", true))()
  	end    
})

Tab7:AddButton({
	Name = "R2O",
	Callback = function()
      		loadstring(game:HttpGet(("https://raw.githubusercontent.com/cheesynob39/R2O/main/Main.lua")))()
  	end    
})

Tab7:AddButton({
	Name = "dizzy hub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/rbx_scripts/main/dizzy_hub/scripts/slap_battles.lua"))()
  	end    
})

Tab7:AddButton({
	Name = "Rogue Hub",
	Callback = function()
      		print("Patched Sorry =[")
  	end    
})

Tab6:AddSlider({
	Name = "WalkSpeed | Safe",
	Min = 20,
	Max = 1000,
	Default = 20,
	Color = Color3.fromRGB(0,162,255),
	Increment = 1,
	ValueName = "WS",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
Walkspeed = Value
	end    
})

Tab6:AddToggle({
	Name = "Keep WalkSpeed | Recomended for KS & RP",
	Default = false,
	Callback = function(Value)
_G.KeepWalkspeed = Value
            while _G.KeepWalkspeed do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Walkspeed then
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = Walkspeed
                end
task.wait()
            end
	end    
})

Tab6:AddSlider({
	Name = "JumpPower | Safe",
	Min = 50,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(255,154,0),
	Increment = 1,
	ValueName = "JP",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
Jumppower = Value
	end    
})

Tab6:AddToggle({
	Name = "Keep JumpPower | Recomended for KS & RP",
	Default = false,
	Callback = function(Value)
_G.KeepJumppower = Value
            while _G.KeepJumppower do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Jumppower then
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower = Jumppower
                end
task.wait()
            end
	end    
})

Tab5:AddButton({
                    Name = "Get [REDACTED] | Only if Someone have used it.",
Callback = function()
if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
Door = 0
for i = 1, 10 do
Door = Door + 1
        if game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850) then
        else
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door].TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door].TouchInterest.Parent, 1)
wait(4)
end
end
else
game.StarterGui:SetCore("SendNotification", {
                Title = "Hey!";
                Duration = 5;
                Text = "You need 5000 slaps";
            })
            end
end
                    })

Tab5:AddButton({
	Name = "Get Elude | Fast",
	Callback = function()
Place = game.PlaceId
Server = game.JobId
local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        local localPlr = game:GetService("Players").LocalPlayer
        repeat wait() until localPlr
        game:GetService("RunService").RenderStepped:Connect(function()
            localPlr.Character.HumanoidRootPart.CFrame = CFrame.new(-502.336, 14.228, -179.597)
        end)
game:GetService("TeleportService"):TeleportToPlaceInstance(Place, Server, game.Players.LocalPlayer)
    ]])
end
game:GetService("TeleportService"):Teleport(11828384869)
  	end    
})

Tab5:AddButton({
	Name = "Get Chain | Needs 1K Slaps.",
	Callback = function()
Place = game.PlaceId
Server = game.JobId
local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        local localPlr = game:GetService("Players").LocalPlayer
        repeat wait() until localPlr
local decal_codes = {
    ["http://www.roblox.com/asset/?id=9648769161"] = "4",
    ["http://www.roblox.com/asset/?id=9648765536"] = "2",
    ["http://www.roblox.com/asset/?id=9648762863"] = "3",
    ["http://www.roblox.com/asset/?id=9648759883"] = "9",
    ["http://www.roblox.com/asset/?id=9648755440"] = "8",
    ["http://www.roblox.com/asset/?id=9648752438"] = "2",
    ["http://www.roblox.com/asset/?id=9648749145"] = "8",
    ["http://www.roblox.com/asset/?id=9648745618"] = "3",
    ["http://www.roblox.com/asset/?id=9648742013"] = "7",
    ["http://www.roblox.com/asset/?id=9648738553"] = "8",
    ["http://www.roblox.com/asset/?id=9648734698"] = "2",
    ["http://www.roblox.com/asset/?id=9648730082"] = "6",
    ["http://www.roblox.com/asset/?id=9648723237"] = "3",
    ["http://www.roblox.com/asset/?id=9648718450"] = "6",
    ["http://www.roblox.com/asset/?id=9648715920"] = "6",
    ["http://www.roblox.com/asset/?id=9648712563"] = "2"
}
    for i,v in ipairs(game:GetService("Workspace").Map:WaitForChild("CodeBrick"):WaitForChild("SurfaceGui"):GetDescendants()) do
        if v.Name == 'IMGTemplate' then
            local decal_url = tostring(v.Image)
            local code = decal_codes[decal_url]
            if 0 < #game:GetService("Workspace").Map:WaitForChild("OriginOffice").Door.Keypad.Display.SurfaceGui.TextLabel.Text then
                fireclickdetector(game:GetService("Workspace").Map:WaitForChild("OriginOffice").Door.Keypad.Buttons.Reset.ClickDetector)
            end
            task.wait(.2)
            fireclickdetector(game:GetService("Workspace").Map:WaitForChild("OriginOffice").Door.Keypad.Buttons[code].ClickDetector)
        end
    end
    task.wait(.2)
    fireclickdetector(game:GetService("Workspace").Map:WaitForChild("OriginOffice").Door.Keypad.Buttons.Enter.ClickDetector)
game:GetService("TeleportService"):TeleportToPlaceInstance(Place, Server, game.Players.LocalPlayer)
    ]])
end
game:GetService("TeleportService"):Teleport(9431156611)
  	end    
})

Tab5:AddButton({
	Name = "Get Tycoon | Safe",
	Callback = function()
      		repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0,-1.5,0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
until game.Players.LocalPlayer.PlayerGui.PlateIndicator.TextLabel.Text == "Plate Counter: 600"
                    end    
                })

Tab5:AddButton({
	Name = "Get Trap | 20min Version",
	Callback = function()
for i = 1, 200 do
game:GetService("ReplicatedStorage").lbrick:FireServer()
game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
wait(Random.new():NextNumber(1.1,1.35))
game:GetService("ReplicatedStorage").lbrick:FireServer()
game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
wait(Random.new():NextNumber(1.1,1.35))
game:GetService("ReplicatedStorage").lbrick:FireServer()
game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
wait(Random.new():NextNumber(1.1,1.35))
game:GetService("ReplicatedStorage").lbrick:FireServer()
game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
wait(Random.new():NextNumber(1.1,1.35))
game:GetService('VirtualInputManager'):SendKeyEvent(true,'E',false,x)
wait(Random.new():NextNumber(1.1,1.35))
end
                    end    
                })

Tab5:AddToggle({
	Name = "Get Trap | Legit Version",
	Default = false,
	Callback = function(Value)
_G.Brickfarm = Value
while _G.Brickfarm do
game:GetService('VirtualInputManager'):SendKeyEvent(true,'E',false,x)
task.wait(5.01)
end
	end    
})

Tab5:AddToggle({
                    Name = "AutoReplica | With/Without Glove Equiped",
                    Default = false,
                    Callback = function(Value)
_G.BobFarm = Value
while _G.BobFarm do
game:GetService("ReplicatedStorage").Duplicate:FireServer()
wait(Random.new():NextNumber(5.2,5.4))
end
                    end    
                })

Tab5:AddButton({
	Name = "Brazil Badge | TP",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
                    end    
                })

Tab5:AddButton({
	Name = "Court Evidence Badge | Any Zone",
	Callback = function()
fireclickdetector(game.Workspace.Lobby.Scene.knofe.ClickDetector)
                    end    
                })

Tab5:AddButton({
	Name = "Duck Badge | Any Zone",
	Callback = function()
fireclickdetector(game.Workspace.Arena["default island"]["Rubber Ducky"].ClickDetector)
                    end    
                })

Tab5:AddButton({
	Name = "The Lone Orange Badge | Any Zone",
	Callback = function()
fireclickdetector(game.Workspace.Arena.island5.Orange.ClickDetector)
                    end    
                })

Tab3:AddToggle({
                    Name = "AntiAdmin | Kicks",
                    Default = false,
                    Callback = function(bool)
antiAdmins = bool
    if bool == true then
        game.Players.PlayerAdded:Connect(function(Plr)
            if Plr:GetRankInGroup(9950771) and 2 <= Plr:GetRankInGroup(9950771) and antiAdmins then
                game.Players.LocalPlayer:Kick("Admin/High Rank Player Detected")
            end
        end)
    end
end
})

Tab3:AddToggle({
                    Name = "Anti Kick | Works Sometimes",
                    Default = false,
                    Callback = function(Value)
_G.AntiKick = Value
while _G.AntiKick do
for i,v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetDescendants()) do
                    if v.Name == "ErrorPrompt" then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                    end
                end
task.wait()
end
end
})

Tab3:AddToggle({
                    Name = "AntiRagdoll | Reset",
                    Default = false,
                    Callback = function(Value)
_G.AntiRagdoll = Value
if _G.AntiRagdoll then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
game.Players.LocalPlayer.CharacterAdded:Connect(function()
game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true and _G.AntiRagdoll then
repeat task.wait()
game.Players.LocalPlayer.Character.Torso.Anchored = true
until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end)
end)
end
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiVoid | FE",
                    Default = false,
                    Callback = function(Value)
game.Workspace.dedBarrier.CanCollide = Value
game.Workspace.TAntiVoid.CanCollide = Value
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiDeathBarrier | FE",
                    Default = false,
                    Callback = function(Value)
if Value == true then
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = false
                    end
                end
workspace.DEATHBARRIER.CanTouch = false
workspace.DEATHBARRIER2.CanTouch = false
workspace.dedBarrier.CanTouch = false
workspace.ArenaBarrier.CanTouch = false
workspace.AntiDefaultArena.CanTouch = false
else
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "BLOCK" then
                        v.CanTouch = true
                    end
                end
workspace.DEATHBARRIER.CanTouch = true
workspace.DEATHBARRIER2.CanTouch = true
workspace.dedBarrier.CanTouch = true
workspace.ArenaBarrier.CanTouch = true
workspace.AntiDefaultArena.CanTouch = true
end
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiBrazil | FE",
                    Default = false,
                    Callback = function(Value)
if Value == true then
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                    if v.ClassName == "Part" then
                        v.CanTouch = false
                    end
                end
else
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                    if v.ClassName == "Part" then
                        v.CanTouch = true
                    end
                end
end
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiCubeDeath | FE",
                    Default = false,
                    Callback = function(Value)
if Value == true then
        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
        else
        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
        end
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiTimestop | FE or Not FE",
                    Default = false,
                    Callback = function(Value)
_G.AntiTimestop = Value
while _G.AntiTimestop do
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Part" then
                        v.Anchored = false
                    end
                end
task.wait()
end
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiSquid | FE",
                    Default = false,
                    Callback = function(Value)
_G.AntiSquid = Value
if _G.AntiSquid == false then
        game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = true
        end
while _G.AntiSquid do
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SquidInk") then
        game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = false
end
task.wait()
end
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiHallowJack | FE",
                    Default = false,
                    Callback = function(Value)
game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = Value
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiConveyor | FE",
                    Default = false,
                    Callback = function(Value)
game.Players.LocalPlayer.PlayerScripts.ConveyorVictimized.Disabled = Value
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiBrick | FE",
                    Default = false,
                    Callback = function(Value)
_G.AntiBrick = Value
while _G.AntiBrick do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Union" then
                        v.CanTouch = false
                    end
                end
task.wait()
end
                    end    
                })

               Tab3:AddToggle({
                    Name = "Anti [REDACTED] | FE",
                    Default = false,
                    Callback = function(Value)
game.Players.LocalPlayer.PlayerScripts.Well.Disabled = Value
                    end    
                })

               Tab3:AddToggle({
                    Name = "Anti Za Hando | FE",
                    Default = false,
                    Callback = function(Value)
_G.AntiZaHando = Value
            while _G.AntiZaHando do
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "Part" then
                        v:Destroy()
                    end
                end
task.wait()
            end
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiReaper | FE",
                    Default = false,
                    Callback = function(Value)
_G.AntiReaper = Value
            while _G.AntiReaper do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "DeathMark" then
                        game:GetService("ReplicatedStorage").ReaperGone:FireServer(game:GetService("Players").LocalPlayer.Character.DeathMark)
                    game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 
                    end
                end
task.wait()
end
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiPusher | FE",
                    Default = false,
                    Callback = function(Value)
_G.AntiPusher = Value
            while _G.AntiPusher do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "wall" then
                        v.CanCollide = false
                    end
                end
task.wait()
end
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiBooster | FE",
                    Default = false,
                    Callback = function(Value)
_G.AntiBooster = Value
while _G.AntiBooster do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "BoosterObject" then
                        v:Destroy()
                    end
                end
task.wait()
end
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiMail | FE",
                    Default = false,
                    Callback = function(Value)
game.Players.LocalPlayer.Character.YouHaveGotMail.Disabled = Value
_G.AntiMail = Value
while _G.AntiMail do
if game.Players.LocalPlayer.Character:FindFirstChild("YouHaveGotMail") then
        game.Players.LocalPlayer.Character.YouHaveGotMail.Disabled = true
end
task.wait()
end
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiStun | FE",
                    Default = false,
                    Callback = function(Value)
_G.AntiStun = Value
while _G.AntiStun do
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil then
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end
task.wait()
end
                    end    
                })

               Tab3:AddToggle({
                    Name = "AntiMegarock/Custom | FE",
                    Default = false,
                    Callback = function(Value)
_G.AntiRock = Value
while _G.AntiRock do
for i,v in pairs(game.Workspace:GetDescendants()) do
                    if v.Name == "rock" then
                        v.CanTouch = false
                        v.CanQuery = false
                    end
                end
task.wait()
end
                    end    
                })

Tab8:AddButton({
	Name = "no head no brain | Kick",
	Callback = function()
      		game.Players.LocalPlayer:Kick("no head no brain")
  	end    
})

Tab8:AddButton({
	Name = "potential sussy activity | Kick",
	Callback = function()
      		game.Players.LocalPlayer:Kick("kicked for potential sussy activity")
  	end    
})

Tab8:AddButton({
	Name = "pick up items | Kick",
	Callback = function()
      		game.Players.LocalPlayer:Kick("pick up items with your hands, not a script silly")
  	end    
})

Tab8:AddButton({
	Name = "imagine exploiting | Kick",
	Callback = function()
      		game.Players.LocalPlayer:Kick("imagine exploiting hahahahaha")
  	end    
})

Tab8:AddButton({
	Name = "match begun | Kick",
	Callback = function()
      		game.Players.LocalPlayer:Kick("Match has already begun")
  	end    
})

Tab8:AddButton({
	Name = "may o not teleporting | Kick",
	Callback = function()
      		game.Players.LocalPlayer:Kick("You may or may not be teleporting around.")
  	end    
})

Tab8:AddButton({
	Name = "fliying | Kick",
	Callback = function()
      		game.Players.LocalPlayer:Kick("ARE YOU FLYING SON?????")
  	end    
})

Tab8:AddButton({
	Name = "arena | Kick",
	Callback = function()
      		game.Players.LocalPlayer:Kick("you already entered the arena silly billy")
  	end    
})

Tab8:AddButton({
	Name = "lab noclip | Kick",
	Callback = function()
      		game.Players.LocalPlayer:Kick("unlock the code first dummy")
  	end    
})

Tab8:AddButton({
	Name = "candy far | Kick",
	Callback = function()
      		game.Players.LocalPlayer:Kick("how did you pick up a candy corn from so far away")
  	end    
})

Tab8:AddButton({
	Name = "may o not teleporting | Kick",
	Callback = function()
      		game.Players.LocalPlayer:Kick("You may or may not be teleporting around.")
  	end    
})

local Gloves = loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/More%20Gloves.lua"))()
Player = game.Players.LocalPlayer.Character.Name
end
