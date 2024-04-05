local gun = script.Parent
local bullet = game.Workspace.496840800
local fireRate = 0.2
local canFire = true
local ammo = 30
local maxAmmo = 30

local function fire()
    if canFire and ammo > 0 then
        canFire = false
        local bulletClone = bullet:Clone()
        bulletClone.Position = gun.Muzzle.Position
        bulletClone.Velocity = gun.Muzzle.CFrame.LookVector * 100
        bulletClone.Parent = game.Workspace 
        ammo = ammo - 1
        wait(fireRate)
        canFire = true
    end
end

local function reload()
    if ammo < maxAmmo then
        ammo = maxAmmo
    end
end

gun.Activated:Connect(fire)

gun.Reload:Connect(reload)
