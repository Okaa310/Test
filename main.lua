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
