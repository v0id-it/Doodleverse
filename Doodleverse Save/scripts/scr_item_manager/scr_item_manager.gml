// an enumerator for object types
enum item_types {
    consumable,
}

#region ignore
/// @arg {string} _name Name of the item
/// @arg {string} _description Description of the 
/// @arg {real} _type Type of an object, Type starts with item_type.<type>
/// @arg {Asset.GMSprite} _sprite Sprite to show the item in inventory as
/// @arg {function} _func Function to run when the object is being "Used" from inventory
#endregion
// this will be a base to create items in the future
function create_item(_name, _description, _type, _sprite, _func) constructor {
    name = _name
    description = _description
    type = _type
    sprite = _sprite
    func = _func
}

global.item_list = {
    
    // feel free to use this template :D
    bread: new create_item(
        "Bread",                // name
        "Bring forth ration for thy tummy",  // description
        item_types.consumable,  // item type
        spr_bread,              // sprite to show
        function () {}          // function when used
    ),
    apple: new create_item(
        "Apple",                // name
        "Keep doctors away",  // description
        item_types.consumable,  // item type
        spr_apple,              // sprite to show
        function () {}          // function when used
    ),
}