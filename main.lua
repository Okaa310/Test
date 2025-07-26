local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
   Name = "Blox Fruits | Okaa Menu",
   LoadingTitle = "Đang tải script...",
   LoadingSubtitle = "by Okaa",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "OkaaHub"
   },
   Discord = {
      Enabled = false
   },
   KeySystem = false
})

local Tab1 = Window:CreateTab("🌾 Auto Farm")
Tab1:CreateButton({
   Name = "Bắt đầu Auto Farm",
   Callback = function()
       while true do
           task.wait(1)
           print("Đang Auto Farm...") -- Bạn có thể thay thế bằng code farm thật
       end
   end,
      local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
   Name = "🌊 Blox Fruits | Okaa Hub",
   LoadingTitle = "Đang tải script...",
   LoadingSubtitle = "by Okaa",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "OkaaHub",
      FileName = "MainConfig"
   },
   Discord = {
      Enabled = false
   },
   KeySystem = false
})

Rayfield:Notify({
   Title = "Đã Load Thành Công!",
   Content = "Script của Okaa đã sẵn sàng sử dụng.",
   Duration = 5
})

-- Tab Auto Farm
local AutoFarm = Window:CreateTab("🌾 Auto Farm", 4483362458)
AutoFarm:CreateButton({
   Name = "Bắt đầu Auto Farm (Level)",
   Callback = function()
       while true do
           task.wait(1)
           print("Auto Farm đang chạy...") -- Bạn có thể thay thế bằng code farm thật
       end
   end,
})

-- Tab Random Trái
local FruitTab = Window:CreateTab("🍉 Trái Ác Quỷ", 4483362458)
FruitTab:CreateButton({
   Name = "Random trái ngay",
   Callback = function()
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RollFruit")
       Rayfield:Notify({
           Title = "Random Trái",
           Content = "Đã random xong!",
           Duration = 4
       })
   end,
})

-- Tab Nhặt trái trên map
local FruitGrab = Window:CreateTab("🍍 Nhặt Trái", 4483362458)
FruitGrab:CreateButton({
   Name = "Nhặt tất cả trái gần bạn",
   Callback = function()
       for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
           if v:IsA("Tool") and v:FindFirstChild("Handle") then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
               wait(0.5)
           end
       end
   end,
})

-- Tab Farm Boss
local BossTab = Window:CreateTab("👑 Farm Boss", 4483362458)
BossTab:CreateButton({
   Name = "Đến gần Boss gần nhất",
   Callback = function()
       for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
           if string.find(v.Name, "Boss") then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
               break
           end
       end
   end,
})

-- Tab Dịch chuyển
local TeleportTab = Window:CreateTab("📍 Dịch Chuyển", 4483362458)
TeleportTab:CreateButton({
   Name = "Đến Đảo Trung Tâm",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(260, 50, 360)
   end,
})
TeleportTab:CreateButton({
   Name = "Đến Nhà Chính",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1600, 250, 500)
   end,
})

-- Tab Hack Speed
local SpeedTab = Window:CreateTab("⚡ Speed", 4483362458)
SpeedTab:CreateSlider({
   Name = "Tốc độ di chuyển",
   Range = {16, 200},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})
})

local Tab2 = Window:CreateTab("🍉 Trái Ác Quỷ")
Tab2:CreateButton({
   Name = "Random Trái",
   Callback = function()
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RollFruit")
       Rayfield:Notify({
           Title = "Random Trái",
           Content = "Đã random xong!",
           Duration = 4
       })
   end,
})
