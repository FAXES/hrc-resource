--Script by FAXES with help from many
-- Thanks Briglair for the js help
RegisterCommand('help', function()
  Citizen.CreateThread(function()
    local display = true
    local startTime = GetGameTimer()
    local delay = 70000 -- ms

    TriggerEvent('disclaimer:display', true)

    while display do
      Citizen.Wait(1)
      --ShowInfo('~y~Attention.~w~ Press ~INPUT_CONTEXT~ to exit.', 0)
      if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        display = false
        TriggerEvent('disclaimer:display', false)
      end
      if (IsControlJustPressed(1, 51)) then
        display = false
        TriggerEvent('disclaimer:display', false)
      end
    end
  end)
end)

RegisterNetEvent('disclaimer:display')
AddEventHandler('disclaimer:display', function(value)
  SendNUIMessage({
    type = "disclaimer",
    display = value
  })
end)

function ShowInfo(text, state)
  SetTextComponentFormat("STRING")
  AddTextComponentString(text)
  DisplayHelpTextFromStringLabel(0, state, 0, -1)
end

------------------------RULES SECTION--------------------------------------------

RegisterCommand('rules', function()
  Citizen.CreateThread(function()
    local display = true
    local startTime = GetGameTimer()
    local delay = 70000 -- ms

    TriggerEvent('rules:display', true)

    while display do
      Citizen.Wait(1)
      --ShowInfo('~y~Attention.~w~ Press ~INPUT_CONTEXT~ to exit.', 0)
      if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        display = false
        TriggerEvent('rules:display', false)
      end
      if (IsControlJustPressed(1, 51)) then
        display = false
        TriggerEvent('rules:display', false)
      end
    end
  end)
end)

RegisterNetEvent('rules:display')
AddEventHandler('rules:display', function(value)
  SendNUIMessage({
    type = "rules",
    display = value
  })
end)

function ShowInfo(text, state)
  SetTextComponentFormat("STRING")
  AddTextComponentString(text)
  DisplayHelpTextFromStringLabel(0, state, 0, -1)
end

------------------------CMDS SECTION--------------------------------------------

RegisterCommand('cmds', function()
  Citizen.CreateThread(function()
    local display = true
    local startTime = GetGameTimer()
    local delay = 70000 -- ms

    TriggerEvent('cmds:display', true)

    while display do
      Citizen.Wait(1)
      --ShowInfo('~y~Attention.~w~ Press ~INPUT_CONTEXT~ to exit.', 0)
      if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        display = false
        TriggerEvent('cmds:display', false)
      end
      if (IsControlJustPressed(1, 51)) then
        display = false
        TriggerEvent('cmds:display', false)
      end
    end
  end)
end)

RegisterNetEvent('cmds:display')
AddEventHandler('cmds:display', function(value)
  SendNUIMessage({
    type = "cmds",
    display = value
  })
end)

function ShowInfo(text, state)
  SetTextComponentFormat("STRING")
  AddTextComponentString(text)
  DisplayHelpTextFromStringLabel(0, state, 0, -1)
end

------------------------INFO SECTION--------------------------------------------

RegisterCommand('sinfo', function()
  Citizen.CreateThread(function()
    local display = true
    local startTime = GetGameTimer()
    local delay = 70000 -- ms

    TriggerEvent('info:display', true)

    while display do
      Citizen.Wait(1)
      --ShowInfo('~y~Attention.~w~ Press ~INPUT_CONTEXT~ to exit.', 0)
      if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        display = false
        TriggerEvent('info:display', false)
      end
      if (IsControlJustPressed(1, 51)) then
        display = false
        TriggerEvent('info:display', false)
      end
    end
  end)
end)

RegisterNetEvent('info:display')
AddEventHandler('info:display', function(value)
  SendNUIMessage({
    type = "info",
    display = value
  })
end)

function ShowInfo(text, state)
  SetTextComponentFormat("STRING")
  AddTextComponentString(text)
  DisplayHelpTextFromStringLabel(0, state, 0, -1)
end