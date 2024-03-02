--Orion lib 💀💀
--switched to  fluent(much better)

print("it was loaded")
local isfile = isfile or function(file)
    local success, filecontents = pcall(function() return readfile(file) end)
    return success and type(filecontents) == 'string'
end 

local lplr = game:GetService("Players").LocalPlayer 
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local hwid = game:GetService('RbxAnalyticsService'):GetClientId()
--Sorry For Skdding Etruia but i am just lazy and ratceus moment 💀
function testExecutor() 
	if not isfile then
		lplr:Kick("Executor does not support isfile, use Fluxus or Delta.")
	end

	if not readfile then
		lplr:Kick("Executor does not support readfile, use Fluxus or Delta.")
	end

	if not makefolder then
		lplr:Kick("Executor does not support makefolder, use Fluxus or Delta.")
	end

	if not writefile then
		lplr:Kick("Executor does not support writefile, use Fluxus or Delta.")
	end

	if not delfile then
		lplr:Kick("Executor does not support delfile, use Fluxus or Delta")
	end
end

testExecutor()

local Window = Fluent:CreateWindow({
    Title = "Lyno - Render",
    SubTitle = "Best Bedwars Hacks Installer",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local function notification(name, content, time)
	Fluent:Notify({
		Title = name,
		Content = content,
		Duration = time
	})
end
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options


local BedwarsLobby = game:HttpGet("https://raw.githubusercontent.com/LynoForWindows/LynoInstaller/main/6872265039.vapeprofile.txt")
local BedwarsGUI = game:HttpGet("https://raw.githubusercontent.com/LynoForWindows/LynoInstaller/main/6872265039GUIPositions.vapeprofile.txt")
local GamePR = game:HttpGet("https://raw.githubusercontent.com/LynoForWindows/LynoInstaller/main/6872274481.vapeprofile.txt")

function install()
    task.wait(0.5)
    delfolder('vape/Profiles')
    task.wait(0.5)
    makefolder('vape/Profiles')
    notification('LY Installer', 'Deleted Files...', 3)
    task.wait(0.5)
    notification('LY Installer', 'Writing Files...' 3)
    writefile('vape/Profiles/6872265039.vapeprofile.txt', BedwarsLobby)
    writefile('vape/Profiles/6872265039GUIPositions.vapeprofile.txt', BedwarsGUI)
    writefile("vape/Profiles/6872274481.vapeprofile.txt", GamePR)
    task.wait(0.5)
    notification('Lyno Installer', 'Success Installed Lyno !', 5)
end

Tab:AddButton({
	Name = "Install",
	Callback = function()
	    install()
  	end    
})
do
    Tabs.Main:AddButton({
        Title = "Button",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            notification("Lyno","Please Wait...",5)
							install()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            notification("Lyno","You Cancelled The Install...",5)
                        end
                    }
                }
            })
        end
    })
	do
		Tabs.Main:AddButton({
			Title = "Discord",
			Description = "Copy Discord",
			Callback = function()
				Window:Dialog({
					Title = "Discord",
					Content = "Real",
					Buttons = {
						{
							Title = "Confirm",
							Callback = function()
								setclipboard("https://dsc.gg/lynoconfigs")
								notification("coppied discord","by using setclipboard function ez boy")
							end
						},
						{
							Title = "Cancel",
							Callback = function()
								notification("you cancelled it ","idk what to write",2)
							end
						}
					}
				})
			end
		})
