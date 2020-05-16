#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Random;


val itemDetails = {
    unobtainium         : 64,
    charging_gem        : 64,
    deepest_ingot       : 64,
    raw_unobtainium_gem : 64
} as int[string];

for key, value in itemDetails {
    var item = VanillaFactory.createItem(key);
    item.creativeTab=scripts.wilderness.creativeTab;
    item.maxStackSize = value;
    item.register();
}


var yingyang = VanillaFactory.createItem("ying_yang");
yingyang.maxStackSize = 1;
yingyang.creativeTab=scripts.wilderness.creativeTab;
yingyang.glowing = true;
yingyang.maxDamage = 99;    // Damage will show stored health, up to 100

yingyang.itemRightClick = function(stack, world, player, hand) {
    // We don't do anything on a client world, return PASS to allow other handlers to take this action if needed
    if (world.remote) {
        return "PASS";
    }

    if (player.isSneaking) {
        // drain player and charge yingyang
        stack.damage(1, player);
        player.health -= 2.0F;
    } else {
        // remove a charge and heal player
        if (stack.damage <= 0) {
            player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(10 * 20, 1, false, false));
        } else {
            stack.damage(-1, player);
            player.health = min(player.maxHealth, player.health + 1.0F);
        }
    }

    return "SUCCESS";
};

yingyang.register();
