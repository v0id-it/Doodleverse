var _pad = 5


// loop through inventory
for (var i = 0; i < array_length(global.inventory); i++) {
    // set variables
    var _name = global.inventory[i].name
    var _desc = global.inventory[i].description
    var _sprite = global.inventory[i].sprite
    var _c = (hover = i) ? c_yellow : c_white
    
    // draw item name, list, and sprite
    draw_sprite_ext(_sprite, 0, _pad + (30*(_c==c_yellow)), _pad+(30*i), 1, 1, 0, _c, 1)
    draw_text_color(_pad*2 + 16 + (30*(_c==c_yellow)), _pad + (30*i), $"{_name} - {_desc}", _c, _c, _c, _c, 1)
}