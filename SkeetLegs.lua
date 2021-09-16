-- Menu ->
menu.add_check_box("Enable Skeet legs")
client.log("Skeet legs has been successfully loaded!")

--Global Variable ->
local switch = true

--Legs Movement ->
local function LegsMovement()

    local get_local_player = entitylist.get_local_player()
    local is_alive_check = get_local_player:get_alive()

    if menu.get_bool("Enable Skeet legs") then

        if is_alive_check == true then

            if switch then

                switch = false

            else

                switch = true

            end
        

            if switch then

                menu.set_bool("Misc.slidewalk", false)

            else

                menu.set_bool("Misc.slidewalk", true)

            end

        else

            menu.set_bool("Misc.slidewalk", true)

        end  
    end
end

-- Callback ->
client.add_callback("on_createmove", LegsMovement)
