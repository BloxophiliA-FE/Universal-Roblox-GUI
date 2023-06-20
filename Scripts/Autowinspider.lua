local noclipON = true
    if not stad1 then
        for _,v in pairs(game:GetService("Workspace").Items:GetDescendants()) do
            if v.ClassName == "ClickDetector" then
                if v.Parent.Parent.Name == "Crowbar" then
                    playercheckpos = lplr.Character.HumanoidRootPart.CFrame
                    wait(0.3)
                    lplr.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    wait(0.3)
                    local args = {
                        [1] = "AttemptSwapItems",
                        [2] = v.Parent
                    }
                    game:GetService("ReplicatedStorage").modules.up.Network.RemoteFunction:InvokeServer(unpack(args))
                    wait(0.2)
                    pcall(function()
                        playercheckpos2 = lplrhum.CFrame
                        if lplr.Backpack:FindFirstChild("Crowbar") then
                            lplr.Backpack:FindFirstChild("Crowbar").Parent = lplr.Character
                            pickupye1 = true
                        elseif lplr.Character:FindFirstChild("Crowbar") then
                            pickupye1 = true
                        end
                        wait(0.2)
                        if pickupye1 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(500.116486, 58.4998817, 98.4872971)
                            wait(0.2)
                            local args = {
                                [1] = "AttemptTriggerMapEvent",
                                [2] = workspace.Map01_Cabin.DockGate.BoardEvent.Trigger
                            }
                            game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                            wait(0.2)
                            pickupye1 = false
                            stad1 = true
                        end
                    end)
                end
            end
        end
    end
    
    if not stad1 then return end
    
    if not stad2 then
        for _,v in pairs(game:GetService("Workspace").Items:GetDescendants()) do
            if v.ClassName == "ClickDetector" then
                if v.Parent.Parent.Name == "Battery" then
                    wait(0.2)
                    playercheckpos = lplr.Character.HumanoidRootPart.CFrame
                    wait(0.2)
                    lplr.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    wait(0.2)
                    local args = {
                        [1] = "AttemptSwapItems",
                        [2] = v.Parent
                    }
                    game:GetService("ReplicatedStorage").modules.up.Network.RemoteFunction:InvokeServer(unpack(args))
                    wait(0.2)
                    stad2 = true
                end
            end
        end
    end
    
    if not stad2 then return end
    
    if not stad3 then
        pcall(function()
            wait(0.2)
            if lplr.Backpack:FindFirstChild("Battery") then
                lplr.Backpack:FindFirstChild("Battery").Parent = lplr.Character
                pickupye4 = true
            elseif lplr.Character:FindFirstChild("Battery") then
                pickupye4 = true
            else return end
            wait(0.2)
            if pickupye4 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(436.361237, 58.7000008, 67.5416489)
                wait(0.3)
                local args = {
                    [1] = "AttemptTriggerMapEvent",
                    [2] = workspace.Map01_Cabin.Shed.BatteryLever.BatteryHolder.Trigger
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(435.346283, 58.7000008, 72.5034714)
                wait(0.3)
                local args = {
                    [1] = "AttemptTriggerMapEvent",
                    [2] = workspace.Map01_Cabin.Shed.BatteryLever.PoweredLeverSwitch.Trigger
                }
                game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
                wait(0.3)
                pickupye4 = false
                stad3 = true
            end
        end)
    end
    
    if not stad3 then return end
    
    if not stad4 then
        wait(0.3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(563.418213, 43, 88.4427719)
        wait(0.3)
        local args = {
            [1] = "AttemptTriggerMapEvent",
            [2] = workspace.Map01_Cabin.BunkerUnderground.LeverSwitch.Trigger
        }
        game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
        wait(0.3)
        stad4 = true
        print("stad4")
    end
    
    if not stad4 then return end
    
    if not stad5 then
        wait(0.3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(577.174744, 43.2000008, 79.9113922)
        wait(0.3)
        local args = {
            [1] = "AttemptSwapItems",
            [2] = workspace.Items["Purple Key"].Hitbox
        }
        
        game:GetService("ReplicatedStorage").modules.up.Network.RemoteFunction:InvokeServer(unpack(args))
        wait(0.3)
        stad5 = true
    end
    
    if not stad5 then return end
    
    pcall(function()
        playercheckpos2 = lplrhum.CFrame
        if lplr.Backpack:FindFirstChild("Purple Key") then
            lplr.Backpack:FindFirstChild("Purple Key").Parent = lplr.Character
            pickupye3 = true
        elseif lplr.Character:FindFirstChild("Purple Key") then
            pickupye3 = true
        end
        wait(0.3)
        if pickupye3 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(499.690582, 58.5, 98.9617615)
            wait(0.3)
            local args = {
                [1] = "AttemptToggleDoor",
                [2] = workspace.Map01_Cabin.DockGate.DockDoorSystem.DockDoor,
                [3] = false
            }
            game:GetService("ReplicatedStorage").modules.up.Network.RemoteEvent:FireServer(unpack(args))
            wait(0.3)
            pickupye3 = false
            stad5 = false
            stad4 = false
            stad3 = false
            stad2 = false
            stad1 = false
            noclipON = false
        end
    end)
end)
