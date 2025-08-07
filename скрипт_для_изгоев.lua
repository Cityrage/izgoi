print("PiskaSiskiHub -- Booga Booga")
local Library = loadstring(game:HttpGetAsync("https://github.com/1dontgiveaf/Fluent-Renewed/releases/download/v1.0/Fluent.luau"))()
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/1dontgiveaf/Fluent-Renewed/refs/heads/main/Addons/SaveManager.luau"))()
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/1dontgiveaf/Fluent-Renewed/refs/heads/main/Addons/InterfaceManager.luau"))()

local Players = game:GetService("Players")

local VirtualUser = cloneref(game:GetService("VirtualUser"))
		Players.LocalPlayer.Idled:Connect(function()
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
		print("NIGGAS AFK")
end)
 
local PiskaPart = Instance.new("Part")
PiskaPart.Name = "PiskaPart"
PiskaPart.Parent = workspace
PiskaPart.Anchored = true 
PiskaPart.Shape = Enum.PartType.Wedge
PiskaPart.Position = Vector3.new(-122, -28, -193)
PiskaPart.Size = Vector3.new(4,30,25)
PiskaPart.Color = Color3.fromRGB(255, 0, 0)
PiskaPart.Orientation = Vector3.new(0, 180, 0)
PiskaPart.Transparency = 0.9

local SiskiPart2 = Instance.new("Part")
SiskiPart2.Name = "SiskiPart2"
SiskiPart2.Parent = workspace
SiskiPart2.Anchored = true 
SiskiPart2.Shape = Enum.PartType.Wedge
SiskiPart2.Position = Vector3.new(-202, 5, -616)
SiskiPart2.Size = Vector3.new(4,30,25)
SiskiPart2.Color = Color3.fromRGB(255, 0, 0)
SiskiPart2.Orientation = Vector3.new(0, 200, 0)
SiskiPart2.Transparency = 0.9

local XuesosPart3 = Instance.new("Part")
XuesosPart3.Name = "XuesosPart3"
XuesosPart3.Parent = workspace
XuesosPart3.Anchored = true 
XuesosPart3.Position = Vector3.new(-214, 18, -627)
XuesosPart3.Size = Vector3.new(12,1,12)
XuesosPart3.Color = Color3.fromRGB(255, 0, 0)
XuesosPart3.Transparency = 0.9

local PizdaPart4 = Instance.new("Part")
PizdaPart4.Name = "PizdaPart4"
PizdaPart4.Parent = workspace
PizdaPart4.Anchored = true 
PizdaPart4.Shape = Enum.PartType.Wedge
PizdaPart4.Position = Vector3.new(-44, -104, -392)
PizdaPart4.Size = Vector3.new(6,20,17)
PizdaPart4.Color = Color3.fromRGB(255, 0, 0)
PizdaPart4.Transparency = 0.9

local FlinLoxPart5 = Instance.new("Part")
FlinLoxPart5.Name = "FlinLoxPart3"
FlinLoxPart5.Parent = workspace
FlinLoxPart5.Anchored = true 
FlinLoxPart5.Position = Vector3.new(-45, -94, -374)
FlinLoxPart5.Size = Vector3.new(13,1,13)
FlinLoxPart5.Color = Color3.fromRGB(255, 0, 0)
FlinLoxPart5.Transparency = 0.9

local Window = Library:CreateWindow{
    Title = "PiskaSiskiHub",
    SubTitle = "Booga Booga - piska edition",
    TabWidth = 160,
    Size = UDim2.fromOffset(830, 525),
    Resize = true,
    MinSize = Vector2.new(470, 380),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
}

local Tabs = {
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
    Main = Window:AddTab({ Title = "Main", Icon = "menu" }),
    Combat = Window:AddTab({ Title = "Combat", Icon = "skull" }),
    Farm = Window:AddTab({ Title = "Farm", Icon = "layout-dashboard" }),
    Item = Window:AddTab({ Title = "Item", Icon = "backpack" }),
    Fun = Window:AddTab({ Title = "Fun", Icon = "bomb" }),
    WaypointTab = Window:AddTab({ Title = "Waypoints", Icon = "bug" })
}

local PS = game:GetService('PathfindingService')
local rs = game:GetService("ReplicatedStorage")
local packets = require(rs.Modules.Packets)
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local root = char:WaitForChild("HumanoidRootPart")
local hum = char:WaitForChild("Humanoid")
local runs = game:GetService("RunService")
local httpservice = game:GetService("HttpService")
local Players = game:GetService("Players")
local localiservice = game:GetService("LocalizationService")
local marketservice = game:GetService("MarketplaceService")
local rbxservice = game:GetService("RbxAnalyticsService")
local placestructure

makefolder('TWEENCFGAM');

local tspmo = game:GetService("TweenService")
local itemslist = {
"Adurite", "Berry", "Bloodfruit", "Bluefruit", "Coin", "Essence", "Hide", "Ice Cube", "Iron", "Jelly", "Leaves", "Log", "Steel", "Stone", "Wood", "Gold", "Raw Gold", "Crystal Chunk", "Raw Emerald", "Pink Diamond", "Raw Adurite", "Raw Iron", "Coal"}
local Options = Library.Options
--{MAIN TAB}
local wstoggle = Tabs.Main:CreateToggle("wstoggle", { Title = "PiskaWalkspeed", Default = false })
local wsslider = Tabs.Main:CreateSlider("wsslider", { Title = "SiskiValue", Min = 16, Max = 23, Rounding = 1, Default = 16 })
local hheighttoggle = Tabs.Main:CreateToggle("hheighttoggle", { Title = "XuesosHipHeight", Default = false })
local hheightslider = Tabs.Main:CreateSlider("hheightslider", { Title = "PizdaValue", Min = 2.0, Max = 6.5, Rounding = 1, Default = 2 })
local msatoggle = Tabs.Main:CreateToggle("msatoggle", { Title = "FlinLoxMountainClimber", Default = false })

--tabs
local CombatSection = Tabs.Combat:Section("PiskaCombat")
local HealSection = Tabs.Combat:Section("SiskiEating")
local sectionStructure = Tabs.Farm:Section("XuesosStructure")
local PlantsSection = Tabs.Farm:Section("PizdaPlants")
local BuildSection = Tabs.Farm:Section("FlinLoxBuilding")
local DropSection = Tabs.Item:Section("PiskaItemDrop")
local PickSection = Tabs.Item:Section("SiskiItemPickUp")
local CFGSect = Tabs.WaypointTab:Section("XuesosConfigs")
local MoveSection = Tabs.WaypointTab:Section("PizdaMoving")
local WaypointSection = Tabs.WaypointTab:Section("FlinLoxWaypoints")
local FpsBoostSection = Tabs.Main:Section("PiskaFpsSection")
local AutoHitSect = Tabs.Main:Section("SiskiAutoHits")
--tabs

FpsBoostSection:CreateButton({Title = "ZALOOPA FPS BOOST", Callback = function() local fpsBooster = loadstring(game:HttpGet("https://raw.githubusercontent.com/XDSCRIPTER/fpsBooster/refs/heads/main/fps.lua"))() end })

_G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true -- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
    ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
    ["No Explosions"] = true, -- Makes Explosion's invisible
    ["No Clothes"] = true, -- Removes Clothing from the game
    ["Low Water Graphics"] = true, -- Removes Water Quality
    ["No Shadows"] = true, -- Remove Shadows
    ["Low Rendering"] = true, -- Lower Rendering
    ["Low Quality Parts"] = true -- Lower quality parts
}



local killauratoggle = CombatSection:CreateToggle("killauratoggle", { Title = "PiskaAura", Default = false })
local resourceauratoggle = AutoHitSect:CreateToggle("resourceauratoggle", { Title = "SiskiResource", Default = false })
local BuidlingToggle = AutoHitSect:CreateToggle("BuidlingToggle", { Title = "XuesosBuildings", Default = false })
local critterauratoggle = AutoHitSect:CreateToggle("critterauratoggle", { Title = "PizdaCritters", Default = false })

local EatToggle = HealSection:AddToggle("EatToggle", { Title = "KuniHeal", Default = false })
local eatdropdown = HealSection:AddDropdown("eatdropdown", {Title = "PiskaFoodSelect", Values = {"Bloodfruit", "Bluefruit", "Lemon", "Coconut", "Jelly", "Banana", "Orange", "Oddberry", "Berry", "Strangefruit", "Strawberry", "Sunjfruit", "Pumpkin", "Prickly Pear", "Apple",  "Barley", "Cloudberry", "Carrot"}, Default = "Bloodfruit"})
local AutoEat = HealSection:CreateToggle("AutoEat", { Title = "SiskiAutoEating", Default = false })
local HealthCount = HealSection:CreateSlider("HealthCount", { Title = "XuesosSetHealth", Min = 1, Max = game:GetService('Players').LocalPlayer.Character.Humanoid.Health, Rounding = 1, Default = 2 })
--{ITEM TAB}
local autopickuptoggle = PickSection:CreateToggle("autopickuptoggle", { Title = "PizdaAutoPickup", Default = false })
local chestpickuptoggle = PickSection:CreateToggle("chestpickuptoggle", { Title = "FlinLoxChestPickup", Default = false })
local itemdropdown = PickSection:CreateDropdown("itemdropdown", {Title = "PiskaPickupItems", Values = {"Berry", "Bloodfruit", "Bluefruit", "Lemon", "Strawberry", "Gold", "Raw Gold", "Crystal Chunk", "Coin", "Coins", "Coin2", "Coin Stack", "Essence", "Emerald", "Raw Emerald", "Pink Diamond", "Raw Pink Diamond", "Void Shard","Jelly", "Magnetite", "Raw Magnetite", "Adurite", "Raw Adurite", "Ice Cube", "Stone", "Iron", "Raw Iron", "Steel", "Hide", "Leaves", "Log", "Wood", "Pie"}, Multi = true, Default = { Leaves = true, Log = true }})
local droptogglemanual = DropSection:AddToggle("droptogglemanual", { Title = "SiskiAutoDrop", Default = false })
local droptextbox = DropSection:AddInput("droptextbox", { Title = "XuesosCustomItem", Default = "Bloodfruit", Numeric = false, Finished = false })
--{FARM TAB}
local fruitdropdown = PlantsSection:CreateDropdown("fruitdropdown", {Title = "PizdaSelectFruit",Values = {"Bloodfruit", "Bluefruit", "Lemon", "Coconut", "Jelly", "Banana", "Orange", "Oddberry", "Berry", "Strangefruit", "Strawberry", "Sunjfruit", "Pumpkin", "Prickly Pear", "Apple",  "Barley", "Cloudberry", "Carrot"}, Default = "Bloodfruit"})
local planttoggle = PlantsSection:CreateToggle("planttoggle", { Title = "FlinLoxAutoPlant", Default = false })
local AutoCamFire = sectionStructure:CreateToggle("AutoCamFire", { Title = "PiskaAutoCampFire", Default = false })
local ItemsToCamp = sectionStructure:CreateDropdown("ItemsToCamp", {Title = "SiskiItemsToCampfire",Values = {"Log",'Leaves', 'Wood', 'Coal'}, Default = "Wood"})
local harvesttoggle = PlantsSection:CreateToggle("harvesttoggle", { Title = "XuesosAutoHarvest", Default = false })
local tweenplantboxtoggle = PlantsSection:AddToggle("tweentoplantbox", { Title = "PizdaMoveToPlantBox", Default = false })
local tweenbushtoggle = PlantsSection:AddToggle("tweentobush", { Title = "FlinLoxMoveToBushes", Default = false })
local GridSize = BuildSection:AddInput("PiskaGridSize", { Title = "Grid size", Default = nil, Numeric = false, Finished = false })
BuildSection:CreateButton({Title = "PiskaCreateWaypoints", Callback = function() waypointsforbuild() end })

BuildSection:CreateButton({Title = "SiskiPlacePlantboxes", Callback = function() placestructure() end })

--{Fun TAB}
local orbittoggle = Tabs.Fun:CreateToggle("orbittoggle", { Title = "EblanToggle", Default = false })
local orbitrangeslider = Tabs.Fun:CreateSlider("orbitrange", { Title = "DaunRange", Min = 1, Max = 50, Rounding = 1, Default = 20 })
--ВАЙПОИНТЫ 






local httpService = game:getService('HttpService');
local javaUrl = 'https://raw.githubusercontent.com/XDSCRIPTER/DefaultCFG.json/refs/heads/main/TweensCFG1.json';

local receivedData = request({ Url = javaUrl, Method = 'GET' });
local body = receivedData.Body;

local decodedBody = httpService:JSONDecode(body);

if not workspace:FindFirstChild("DotsFolder")  then 
    local foldFordots = Instance.new("Model")
    foldFordots.Name = "DotsFolder"
    foldFordots.Parent = game.workspace
end

if not workspace:FindFirstChild("BuildDotsFolder")  then 
    local BuildDotsFolder = Instance.new("Model")
    BuildDotsFolder.Name = "BuildDotsFolder"
    BuildDotsFolder.Parent = game.workspace
end

if not game.workspace.DotsFolder:FindFirstChild("Counter")  then 
    local Counter = Instance.new("IntValue")
    Counter.Name = "Counter"
    Counter.Parent = game.workspace.DotsFolder
    Counter.Value = 0
end

CFGSect:CreateButton({Title = "DolboyobConfig", Callback = function() 
    local HttpService = game:GetService('HttpService')
        local WaypointData = httpService:JSONDecode(body);
        local Ignore = {"EndPose"}
        for index, position in WaypointData.position do
        position = Vector3.new(position.X, position.Y, position.Z)          

        local Dot = Instance.new("Part")
                            Dot.Parent = game.workspace.DotsFolder
                            Dot.Anchored = true 
                            Dot.Position = position
                            Dot.Name = "Dot"
                            Dot.Size =  Vector3.new(1,1,1)
                            Dot.Color = Color3.fromRGB(255, 0, 0)
                            Dot.CanCollide = false
                            Dot.Material = Enum.Material.Neon
                            Dot.Shape = Enum.PartType.Ball
                            Dot.Transparency = 0
                            print(Dot.position, 'xd')
                            game.workspace.DotsFolder.Counter.Value = game.workspace.DotsFolder.Counter.Value + 1
        if Dot.CFrame == CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) then
        Dot:Remove()
        end
        end
end })



WaypointSection:CreateButton({Title = "Delete Niggers", Callback = function() 
    game:GetService("RunService").RenderStepped:Connect(function()
    for i,v in pairs(workspace.Resources:GetDescendants()) do
    if v.Name == "Old Boards" and workspace.Resources:FindFirstChild("Old Boards")  then
	v:Remove()
    end
    end
    end)
end })



WaypointSection:CreateButton({Title = "Create Su4ka", Callback = function() 
            local Dot = Instance.new("Part")
			Dot.Parent = game.workspace.DotsFolder
			Dot.Anchored = true 
			Dot.CFrame = game:GetService('Players').LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
			Dot.Size =  Vector3.new(1,1,1)
			Dot.Color = Color3.fromRGB(255, 0, 0)
			Dot.CanCollide = false
			Dot.Material = Enum.Material.Neon
			Dot.Transparency = 0.1
			Dot.Shape = Enum.PartType.Ball
			Dot.Name =  "Dot"
            game.workspace.DotsFolder.Counter.Value = game.workspace.DotsFolder.Counter.Value + 1
end })

local startMOVE = MoveSection:CreateToggle("StartMoving", { Title = "StartDodik", Default = false })

local  strttween= MoveSection:CreateToggle("strttween", { Title = "TweenPidor", Default = false })
--НАИМЕНОВАНИЕ КФГ
local CFGNAME = CFGSect:AddInput("cfgname", { Title = "Dolboyob Name", Default = "DefaultCFG", Numeric = false, Finished = false })
--НАИМЕНОВАНИЕ КФГ
----------------------
--ТУТ СОЗДАНИЕ КФГ ТОЕСТЬ ИМПОРТ В ДЖАВА ФАЙЛ
CFGSect:CreateButton({Title = "Save Dolboyob", Callback = function() 
    local function strfromtable(tbl)
   local ret = {}
   for _,v in pairs(game.workspace.DotsFolder:GetChildren()) do
   if v.Name ~= "Counter" and v.Name ~= "Highlight" and v.Name ~= "HowMuch" then
    table.insert(ret,"{"..'"'.."X"..'"'..":".. v.Position.X..",")
    table.insert(ret,'"'.."Y"..'"'..":"..v.Position.Y..",")
    table.insert(ret,'"'.."Z"..'"'..":"..v.Position.Z.. "}"..","   )
   end
   end
   return table.concat(ret)
   end
   Library:Notify{Title = "PiskaSiskiHub",Content = 'TWEENCFGAM/'..Options.cfgname.Value..'.json Was Succesfully Saved!',Duration = 3}
   writefile('TWEENCFGAM/'..Options.cfgname.Value..'.json',"{".. '"'.. "position".. '"'.. ":".. "[".. strfromtable(game.workspace.DotsFolder:GetChildren()).. '"'.."EndPose".. '"'.."]".. "}")
end })
--ТУТ СОЗДАНИЕ КФГ ТОЕСТЬ ИМПОРТ В ДЖАВА ФАЙЛ


--тут обновление
local SelectCFG = CFGSect:AddDropdown("SelectDolboyob", {Title = "Select Config", Values = {nil}})
local ct = 0

CFGSect:CreateButton({Title = "Refresh Dolboyob", Callback = function()

    for index = 1, #listfiles('TWEENCFGAM') do
    SelectCFG:SetValues{listfiles('TWEENCFGAM')[1],listfiles('TWEENCFGAM')[2],listfiles('TWEENCFGAM')[3],listfiles('TWEENCFGAM')[4],listfiles('TWEENCFGAM')[5],listfiles('TWEENCFGAM')[6],listfiles('TWEENCFGAM')[6 + 1],listfiles('TWEENCFGAM')[7 + 1],listfiles('TWEENCFGAM')[8 + 1],listfiles('TWEENCFGAM')[10], listfiles('TWEENCFGAM')[11], listfiles('TWEENCFGAM')[12], listfiles('TWEENCFGAM')[13], listfiles('TWEENCFGAM')[14], listfiles('TWEENCFGAM')[15], listfiles('TWEENCFGAM')[16], listfiles('TWEENCFGAM')[17], listfiles('TWEENCFGAM')[18], listfiles('TWEENCFGAM')[19], listfiles('TWEENCFGAM')[20], listfiles('TWEENCFGAM')[21], listfiles('TWEENCFGAM')[22]}
    wait(0.1)
    end
    
end })

local function reload()

	local s = game.workspace:FindFirstChild("DotsFolder"):Clone()
	s.Parent = workspace
	if game.workspace:FindFirstChild("DotsFolder") ~= s then
	wait(1)
	game.workspace:FindFirstChild("DotsFolder"):Remove()
end
end

local function moveToWaypointStand(waypoint)

local humanoid = game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")
if not humanoid then return end --Handle case where humanoid isn't loaded yet

local targetPosition = waypoint.Position
local success, err = pcall(function()
	humanoid:MoveTo(targetPosition)
	
end)
end


local function moveToWaypointsStand()
if game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character then
	for _, waypoint in ipairs(game.workspace:FindFirstChild("DotsFolder"):GetChildren())  do
	if waypoint.Name ~= "Counter" and waypoint.Name ~= "Highlight" and waypoint.Name ~= "HowMuch" then
        local humanoid = game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")
		moveToWaypointStand(waypoint)
        humanoid.MoveToFinished:Wait()
	end
	end
end
end


startMOVE:OnChanged(function()
   moveToWaypointsStand()
   while true do
   if Options.StartMoving.Value then
	moveToWaypointsStand()
	wait(0.1)
   else
	game:GetService("Players").LocalPlayer.Character.Humanoid:MoveTo(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position)
	reload()
		break
	end
 
	end
end)


--тут загрузка кфг
CFGSect:CreateButton({Title = "Load Dolboyob", Callback = function() 
        local HttpService = game:GetService('HttpService')
        Library:Notify{Title = "PiskaSiskiHub",Content = Options.SelectCFG.Value.. 'Wass Succesfully loaded!' ,Duration = 3}
	    	local WaypointData = HttpService:JSONDecode(readfile(Options.SelectCFG.Value))
			local Ignore = {"EndPose"}
			for index, position in WaypointData.position do
			position = Vector3.new(position.X, position.Y, position.Z)          
 
            local Dot = Instance.new("Part")
								Dot.Parent = game.workspace.DotsFolder
								Dot.Anchored = true 
								Dot.Position = position
								Dot.Name = "Dot"
								Dot.Size =  Vector3.new(1,1,1)
								Dot.Color = Color3.fromRGB(255, 0, 0)
								Dot.CanCollide = false
								Dot.Material = Enum.Material.Neon
								Dot.Shape = Enum.PartType.Ball
								Dot.Transparency = 0
                                print(Dot.position)
			if Dot.CFrame == CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) then
			Dot:Remove()
			end
			end
end })



--тут загрузка кфг

--КОНЕЦ ВАЙПОНТОВ
local orbitradiusslider = Tabs.Fun:CreateSlider("orbitradius", { Title = "Nigger radius", Min = 0, Max = 30, Rounding = 1, Default = 10 })
local orbitspeedslider = Tabs.Fun:CreateSlider("orbitspeed", { Title = "Xuesos Speed", Min = 0, Max = 10, Rounding = 1, Default = 5 })
local itemheightslider = Tabs.Fun:CreateSlider("itemheight", { Title = "Height of daun", Min = -3, Max = 10, Rounding = 1, Default = 3 })

--{Materials}



--{END OF TAB ELEMENTS}

local wscon, hhcon
local function updws()
    if wscon then wscon:Disconnect() end

    if Options.wstoggle.Value then
        wscon = runs.RenderStepped:Connect(function()
            if hum then
                hum.WalkSpeed = Options.wstoggle.Value and Options.wsslider.Value or 16
            end
        end)
    end
end

local function updhh()
    if hhcon then hhcon:Disconnect() end

    if Options.hheighttoggle.Value then
        hhcon = runs.RenderStepped:Connect(function()
            if hum then
                hum.HipHeight = Options.hheightslider.Value
            end
        end)
    end
end

local function onplradded(newChar)
    char = newChar
    root = char:WaitForChild("HumanoidRootPart")
    hum = char:WaitForChild("Humanoid")

    updws()
    updhh()
end

plr.CharacterAdded:Connect(onplradded)
Options.wstoggle:OnChanged(updws)
Options.hheighttoggle:OnChanged(updhh)

local slopecon
local function updmsa()
    if slopecon then slopecon:Disconnect() end

    if Options.msatoggle.Value then
        slopecon = game:GetService("RunService").RenderStepped:Connect(function()
            if hum then
                hum.MaxSlopeAngle = 90
            end
        end)
    else
        if hum then
            hum.MaxSlopeAngle = 46
        end
    end
end

Options.msatoggle:OnChanged(updmsa)

local function swingtool(entityid)
    if packets.SwingTool and packets.SwingTool.send then
        packets.SwingTool.send(entityid)
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://10761451679"
        Track = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):LoadAnimation(animation)
        Track:Play()
    end
end

local function pickup(entityid)
    if packets.Pickup and packets.Pickup.send then
        packets.Pickup.send(entityid)
    end
end

local Path = PS:CreatePath({
    AgentCanJump = true,
    WaypointSpacing = 3,
    AgentRadius = 1,
    AgentHeight = 1,
    AgentCanClimb= true,
    Costs = {
		Jump = 2  -- Cost of the climbing path; default is 1
	}
})   



local function movetowaypoints()
  
 
    if plr and plr.Character and Options.strttween.Value == true then
        for _, waypoint in ipairs(game.workspace:FindFirstChild("DotsFolder"):GetChildren())  do
        if Options.strttween.Value == true and waypoint.Name ~= "Counter" then
            print(plr.Character.Humanoid)
            print(waypoint)
           
        local ok, _ = pcall(function()
            Path:ComputeAsync(game:GetService('Players').LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position, waypoint.Position)
        end)
        
        if ok then
            local wps = Path:GetWaypoints()
            for _, wp:  PathWaypoint in wps do
           --print(wp.Action)
          
            local tec = Instance.new("Part")
            tec.Parent = game.workspace
            tec.Position = wp.Position
            tec.CanCollide = false
            tec.Anchored = true
            tec.Size = Vector3.new(0.5,0.5,0.5)
            tec.Material = Enum.Material.Neon
            print(tec.Position)
            print(plr.Character.Humanoid)
            print(Path.Status)    
            plr.Character.Humanoid:MoveTo(wp.Position)
            plr.Character.Humanoid.MoveToFinished:wait()
      
            
          

       
            
 end
        end
        end
    end
end
end



strttween:OnChanged(function()
    movetowaypoints()
    local lastpartpos = tostring(game.workspace.DotsFolder.Counter.Value)
    if game:GetService('Players').LocalPlayer.Character:FindFirstChild("Humanoid").MoveDirection == 0 and game:GetService('Players').LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position == foldFordots.lastpartpos.Position  then
        movetowaypoints()
    end

end)



local selecteditems = {}
itemdropdown:OnChanged(function(Value)
    selecteditems = {} 
    for item, State in pairs(Value) do
        if State then
            table.insert(selecteditems, item)
        end
    end
end)

task.spawn(function()
    while true do
        if not Options.killauratoggle.Value then
            task.wait(0.1)
            continue
        end

        local range = 20
        local targetcount = 1
        local cooldown = 0.1
        local targets = {}

        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= plr then
                local playerfolder = workspace.Players:FindFirstChild(player.Name)
                if playerfolder then
                    local rootpart = playerfolder:FindFirstChild("HumanoidRootPart")
                    local entityid = playerfolder:GetAttribute("EntityID")

                    if rootpart and entityid then
                        local dist = (rootpart.Position - root.Position).Magnitude
                        if dist <= range then
                            table.insert(targets, { eid = entityid, dist = dist })
                        end
                    end
                end
            end
        end

        if #targets > 0 then
            table.sort(targets, function(a, b)
                return a.dist < b.dist
            end)

            local selectedtargets = {}
            for i = 1, math.min(targetcount, #targets) do
                table.insert(selectedtargets, targets[i].eid)
            end
            
           

            swingtool(selectedtargets)
        end

        task.wait(cooldown)
    end
end)

task.spawn(function()
        while true do
            if not Options.resourceauratoggle.Value then
                task.wait(0.1)
                continue
            end

            local range = 20
            local targetcount = 6
            local cooldown = 0.1
            local targets = {}

            for _, res in pairs(workspace.Resources:GetChildren()) do
                if res:IsA("Model") and res:GetAttribute("EntityID") then
                    local eid = res:GetAttribute("EntityID")
                    local ppart = res.PrimaryPart or res:FindFirstChildWhichIsA("BasePart")

                    if ppart then
                        local dist = (ppart.Position - root.Position).Magnitude
                        if dist <= range then
                            table.insert(targets, { eid = eid, dist = dist })
                        end
                    end
                end
            end

            if #targets > 0 then
                table.sort(targets, function(a, b)
                    return a.dist < b.dist
                end)

                local selectedtargets = {}
                for i = 1, math.min(targetcount, #targets) do
                    table.insert(selectedtargets, targets[i].eid)
                end
        
                swingtool(selectedtargets)
            end

            task.wait(cooldown)
        end
    end)

    task.spawn(function()
        while true do
            if not Options.BuidlingToggle.Value then
                task.wait(0.1)
                continue
            end

            local range = 20
            local targetcount = 6
            local cooldown = 0.1
            local targets = {}

            for _, res in pairs(workspace.Deployables:GetChildren(), workspace.Rubble:GetChildren(),workspace.Totems:GetChildren(),workspace.ScavengerMounds:GetChildren()) do
                if res:IsA("Model") and res:GetAttribute("EntityID") then
                    local eid = res:GetAttribute("EntityID")
                    local ppart = res.PrimaryPart or res:FindFirstChildWhichIsA("BasePart")

                    if ppart then
                        local dist = (ppart.Position - root.Position).Magnitude
                        if dist <= range then
                            table.insert(targets, { eid = eid, dist = dist })
                        end
                    end
                end
            end

            if #targets > 0 then
                table.sort(targets, function(a, b)
                    return a.dist < b.dist
                end)

                local selectedtargets = {}
                for i = 1, math.min(targetcount, #targets) do
                    table.insert(selectedtargets, targets[i].eid)
                end
        
                swingtool(selectedtargets)
            end

            task.wait(cooldown)
        end
    end)

task.spawn(function()
    while true do
        if not Options.critterauratoggle.Value then
            task.wait(0.1)
            continue
        end

        local range = 20
        local targetcount = 3
        local cooldown = 0.1
        local targets = {}

        for _, critter in pairs(workspace.Critters:GetChildren()) do
            if critter:IsA("Model") and critter:GetAttribute("EntityID") then
                local eid = critter:GetAttribute("EntityID")
                local ppart = critter.PrimaryPart or critter:FindFirstChildWhichIsA("BasePart")

                if ppart then
                    local dist = (ppart.Position - root.Position).Magnitude
                    if dist <= range then
                        table.insert(targets, { eid = eid, dist = dist })
                    end
                end
            end
        end

        if #targets > 0 then
            table.sort(targets, function(a, b)
                return a.dist < b.dist
            end)

            local selectedtargets = {}
            for i = 1, math.min(targetcount, #targets) do
                table.insert(selectedtargets, targets[i].eid)
            end
   
            swingtool(selectedtargets)
        end

        task.wait(cooldown)
    end
end)

task.spawn(function()
    while true do
        local range =35

        if Options.autopickuptoggle.Value then
            for _, item in ipairs(workspace.Items:GetChildren()) do
                if item:IsA("BasePart") or item:IsA("MeshPart") then
                    local selecteditem = item.Name
                    local entityid = item:GetAttribute("EntityID")

                    if entityid and table.find(selecteditems, selecteditem) then
                        local dist = (item.Position - root.Position).Magnitude
                        if dist <= range then
                            pickup(entityid)
                        end
                    end
                end
            end
        end

        if Options.chestpickuptoggle.Value then
            for _, chest in ipairs(workspace.Deployables:GetChildren()) do
                if chest:IsA("Model") and chest:FindFirstChild("Contents") then
                    for _, item in ipairs(chest.Contents:GetChildren()) do
                        if item:IsA("BasePart") or item:IsA("MeshPart") then
                            local selecteditem = item.Name
                            local entityid = item:GetAttribute("EntityID")

                            if entityid and table.find(selecteditems, selecteditem) then
                                local dist = (chest.PrimaryPart.Position - root.Position).Magnitude
                                if dist <= range then
                                    pickup(entityid)
                                end
                            end
                        end
                    end
                end
            end
        end

        task.wait(0.01)
    end
end)

local function getlayout(itemname)
    local inventory = plr.PlayerGui.MainGui.RightPanel.Inventory.List
    for _, child in ipairs(inventory:GetChildren()) do
        if child:IsA("ImageLabel") and child.Name == itemname then
            print(child.LayoutOrder)
            return child.LayoutOrder
        end
    end
    return nil
end


local function drop(itemname)
    local layout = getlayout(itemname)
    if layout then
        if packets.DropBagItem and packets.DropBagItem.send then
            packets.DropBagItem.send(layout)
        end
    end
end



local function useItem(itemname)
    local layout = getlayout(itemname)
    if layout then
        if packets.UseBagItem and packets.UseBagItem.send then
            packets.UseBagItem.send(layout)
        end
    end
end

--BuyToggle

runs.Heartbeat:Connect(function()
    if Options.EatToggle.Value then
        if game:GetService('Players').LocalPlayer.Character.Humanoid.Health <= Options.HealthCount.Value then
        local selectedItem = Options.eatdropdown.Value
        useItem(selectedItem)
        
    end
    end
end)




game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Panels.Stats.Food.Slider:GetPropertyChangedSignal("Size"):Connect(function()
if Options.AutoEat.Value then
local selectedItem = Options.eatdropdown.Value
useItem(selectedItem)
print("Eating")
end
end)

runs.Heartbeat:Connect(function()
    if Options.droptogglemanual.Value then
        local itemname = Options.droptextbox.Value
        drop(itemname)
    end
end)



local plantedboxes = {}

local itemtouseID = {
    Gold = 597,
    Wood = 1,
    Coal = 178,
    Leaves = 166,
    Log = 320

}

local fruittoitemid = {
    Bloodfruit = 94,
    Bluefruit = 377,
    Lemon = 99,
    Coconut = 1,
    Jelly = 604,
    Banana = 606,
    Orange = 602,
    Oddberry = 32,
    Berry = 35,
    Strangefruit = 302,
    Strawberry = 282,
    Sunfruit = 128,
    Pumpkin = 80,
    ["Prickly Pear"] = 378,
    Apple = 243,
    Barley = 247,
    Cloudberry = 101,
    Carrot = 147
}

local function plant(entityid, itemID)
    if packets.InteractStructure and packets.InteractStructure.send then
        packets.InteractStructure.send({ entityID = entityid, itemID = itemID })
        plantedboxes[entityid] = true
    end
end


local function UseCampFire(entityid, itemID)
    if packets.InteractStructure and packets.InteractStructure.send then
        packets.InteractStructure.send({ entityID = entityid, itemID = itemID })
        
    end
end

local function getpbs(range)
    local plantboxes = {}
    for _, deployable in ipairs(workspace.Deployables:GetChildren()) do
        if deployable:IsA("Model") and deployable.Name == "Plant Box" then
            local entityid = deployable:GetAttribute("EntityID")
            local ppart = deployable.PrimaryPart or deployable:FindFirstChildWhichIsA("BasePart")
            if entityid and ppart then
                local dist = (ppart.Position - root.Position).Magnitude
                if dist <= range then
                    table.insert(plantboxes, { entityid = entityid, deployable = deployable, dist = dist })
                end
            end
        end
    end
    return plantboxes
end


local function getCamps(range) -- getllcampfire
    local Camps = {}
    for _, deployable in ipairs(workspace.Deployables:GetChildren()) do
        if deployable:IsA("Model") and deployable.Name == 'Campfire' and deployable:FindFirstChild("Effect"):FindFirstChild('PointLight').Enabled == false then
            local entityid = deployable:GetAttribute("EntityID")
            local ppart = deployable.PrimaryPart or deployable:FindFirstChildWhichIsA("BasePart")
            print(deployable)
            if entityid and ppart then
                local dist = (ppart.Position - root.Position).Magnitude
                if dist <= range then
                    table.insert(Camps, { entityid = entityid, deployable = deployable, dist = dist })
                    print(deployable)
                  
                end
            end
        end
    end
    return Camps
end

local function getbushes(range, fruitname)
    local bushes = {}
    for _, model in ipairs(workspace:GetChildren()) do
        if model:IsA("Model") and model.Name:find(fruitname) then
            local ppart = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
            if ppart then
                local dist = (ppart.Position - root.Position).Magnitude
                if dist <= range then
                    local entityid = model:GetAttribute("EntityID")
                    if entityid then
                        table.insert(bushes, { entityid = entityid, model = model, dist = dist })
                    end
                end
            end
        end
    end
    return bushes
end



local tweening = nil
local function tween(target)
    if tweening then tweening:Cancel() end
    local distance = (root.Position - target.Position).Magnitude
    local duration = distance / 21
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear)
    local tween = tspmo:Create(root, tweenInfo, { CFrame = target })
    tween:Play()
    
    tweening = tween
end



local function tweenplantbox(range)
    while tweenplantboxtoggle.Value do
        local plantboxes = getpbs(range)
        table.sort(plantboxes, function(a, b) return a.dist < b.dist end)

        for _, box in ipairs(plantboxes) do
            if not box.deployable:FindFirstChild("Seed") then
                local target = box.deployable.PrimaryPart.CFrame + Vector3.new(0, 5, 0)
                tween(target)
                break
            end
        end

        task.wait(0.1)
    end
end
--PlantBox
local function tweenpbs(range, fruitname)
    while tweenbushtoggle.Value do
        local bushes = getbushes(range, fruitname)
        table.sort(bushes, function(a, b) return a.dist < b.dist end)

        if #bushes > 0 then
            for _, bush in ipairs(bushes) do
                local target = bush.model.PrimaryPart.CFrame + Vector3.new(0, 5, 0)
                tween(target)
                break
            end
        else
            local plantboxes = getpbs(range)
            table.sort(plantboxes, function(a, b) return a.dist < b.dist end)

            for _, box in ipairs(plantboxes) do
                if not box.deployable:FindFirstChild("Seed") then
                    local target = box.deployable.PrimaryPart.CFrame + Vector3.new(0, 5, 0)
                    tween(target)
                    break
                end
            end
        end

        task.wait(0.1)
    end
end
--PlantBox
--campfire
task.spawn(function()
    while true do
        if not Options.AutoCamFire.Value then
           task.wait(0.1)
           continue
        end
    
    local selectedItemCamp = Options.ItemsToCamp.Value
    local itemID = itemtouseID[selectedItemCamp] or 1
    local range = 50
    local CampFires = getCamps(range)
    print(Options.ItemsToCamp.Value)
    print(itemtouseID[selectedItemCamp])
    for _, Press in ipairs(CampFires) do
    UseCampFire(Press.entityid, itemID)
   end

task.wait(0.1)
end
end)
--campfire

task.spawn(function()
    while true do
        if not Options.planttoggle.Value then
            task.wait(0.1)
            continue
        end

        local range = 30
        local delay = 0.1
        local selectedfruit = Options.fruitdropdown.Value
        local itemID = fruittoitemid[selectedfruit] or 94
        local plantboxes = getpbs(range)
        table.sort(plantboxes, function(a, b) return a.dist < b.dist end)

        for _, box in ipairs(plantboxes) do
            if not box.deployable:FindFirstChild("Seed") then
                plant(box.entityid, itemID)
            else
                plantedboxes[box.entityid] = true
            end
        end
        task.wait(delay)
    end
end)

task.spawn(function()
    while true do
        if not Options.harvesttoggle.Value then
            task.wait(0.1)
            continue
        end
        local harvestrange = 30
        local selectedfruit = Options.fruitdropdown.Value
        local bushes = getbushes(harvestrange, selectedfruit)
        table.sort(bushes, function(a, b) return a.dist < b.dist end)
        for _, bush in ipairs(bushes) do
            pickup(bush.entityid)
        end
        task.wait(0.1)
    end
end)

task.spawn(function()
    while true do
        if not tweenplantboxtoggle.Value then
            task.wait(0.1)
            continue
        end
        local range = 250
        tweenplantbox(range)
    end
end)

task.spawn(function()
    while true do
        if not tweenbushtoggle.Value then
            task.wait(0.1)
            continue
        end
        local range = 200
        local selectedfruit = Options.fruitdropdown.Value
        tweenpbs(range, selectedfruit)
    end
end)

waypointsforbuild = function()
    if not plr or not plr.Character then return end
    local torso = plr.Character:FindFirstChild("HumanoidRootPart")
    if not torso then return end


    if game.workspace:FindFirstChild("BuildDotsFolder") then
    for _, waypoint in ipairs(game.workspace:FindFirstChild("BuildDotsFolder"):GetChildren())  do
    waypoint:Remove()
    end
    end 
    task.wait(0.1)
    local startpos = torso.Position
    local spacing = 6.05

    for x = 0, Options.GridSize.Value - 1 do
        for z = 0, Options.GridSize.Value - 1 do
            local position = startpos + Vector3.new(x * spacing, 0, z * spacing)
            local wpbuild = Instance.new('Part')
            wpbuild.Parent = game.workspace:FindFirstChild("BuildDotsFolder")
            wpbuild.Position = position
            wpbuild.Size = Vector3.new(0.5, 0.5, 0.5)
            wpbuild.Material = Enum.Material.Neon
            wpbuild.Anchored = true
            wpbuild.CanCollide = false
            print(wpbuild.position)
        end
    end
end

placestructure = function()
    if not plr or not plr.Character then return end
    local torso = plr.Character:FindFirstChild("HumanoidRootPart")
    local hum = plr.Character:FindFirstChild("Humanoid")
    if not hum then return end



    for _, waypoint in ipairs(game.workspace:FindFirstChild("BuildDotsFolder"):GetChildren())  do
        local startpos = waypoint.Position - Vector3.new(0, 3, 0)
        local position = startpos 
            hum:MoveTo(waypoint.Position)
            


            hum.MoveToFinished:Connect(function()
            if packets.PlaceStructure and packets.PlaceStructure.send then
                
                packets.PlaceStructure.send{
                    ["buildingName"] = "Plant Box",
                    ["yrot"] = 45,
                    ["vec"] = position,
                    ["isMobile"] = false
                }
                
            end
        end)
        hum.MoveToFinished:Wait()
    end
end

local orbiton, range, orbitradius, orbitspeed, itemheight = false, 20, 10, 5, 3
local attacheditems, itemangles, lastpositions = {}, {}, {}
local itemsfolder = workspace:WaitForChild("Items")

orbittoggle:OnChanged(function(value)
    orbiton = value
    if not orbiton then
        for _, bp in pairs(attacheditems) do bp:Destroy() end
        table.clear(attacheditems)
        table.clear(itemangles)
        table.clear(lastpositions)
    else
        task.spawn(function()
            while orbiton do
                for item, bp in pairs(attacheditems) do
                    if item then
                        local currentpos = item.Position
                        local lastpos = lastpositions[item]
                        
                        if lastpos and (currentpos - lastpos).Magnitude < 0.1 then
                            if packets.ForceInteract and packets.ForceInteract.send then
                                packets.ForceInteract.send(item:GetAttribute("EntityID"))
                            end
                        end

                        lastpositions[item] = currentpos
                    end
                end
                task.wait(0.1)
            end
        end)
    end
end)

orbitrangeslider:OnChanged(function(value) range = value end)
orbitradiusslider:OnChanged(function(value) orbitradius = value end)
orbitspeedslider:OnChanged(function(value) orbitspeed = value end)
itemheightslider:OnChanged(function(value) itemheight = value end)

runs.RenderStepped:Connect(function()
    if not orbiton then return end
    local time = tick() * orbitspeed
    for item, bp in pairs(attacheditems) do
        if item then
            local angle = itemangles[item] + time
            bp.Position = root.Position + Vector3.new(math.cos(angle) * orbitradius, itemheight, math.sin(angle) * orbitradius)
        end
    end
end)

task.spawn(function()
    while true do
        if orbiton then
            local children, index = itemsfolder:GetChildren(), 0
            local anglestep = (math.pi * 2) / math.max(#children, 1)

            for _, item in pairs(children) do
                local primary = item:IsA("BasePart") and item or item:IsA("Model") and item.PrimaryPart
                if primary and (primary.Position - root.Position).Magnitude <= range then
                    if not attacheditems[primary] then
                        local bp = Instance.new("BodyPosition")
                        bp.MaxForce, bp.D, bp.P, bp.Parent = Vector3.new(math.huge, math.huge, math.huge), 1500, 25000, primary
                        attacheditems[primary], itemangles[primary], lastpositions[primary] = bp, index * anglestep, primary.Position
                        index += 1
                    end
                end
            end
        end
        task.wait()
    end
end)

SaveManager:SetLibrary(Library)
InterfaceManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes{}
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
Window:SelectTab(1)

Library:Notify{
    Title = "PiskaSiskiHub",
    Content = "Loaded, Enjoy!", 
    Duration = 8
}
SaveManager:LoadAutoloadConfig()