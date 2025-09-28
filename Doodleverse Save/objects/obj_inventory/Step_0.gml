// hover logic
hover += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)
hover = clamp(hover, 0, array_length(global.inventory)-1)