#loader contenttweaker

import mods.contenttweaker.enchantments.EnchantmentBuilder;

/*
 * This script will create a custom enchantment using ContentWeaker.
 * This enchantment will be a double-edged curse.
 * It will amplify the user's damage.
 * Though it will instantly kill the user once the user is hit.
 *
 * Note, merge the en_us.lang file with your current one if you 
 * want the enchantment to be localized.
 */
/*
val builder = EnchantmentBuilder.create("berserker");

//builder.curse = true;
builder.allowedOnBooks = true;
builder.applicableSlots = [mainHand];
builder.setTypeWeapon();
builder.setRarityCommon();
//builder.setRarityVeryRare();
builder.maxLevel = 5;

// This function returns the enchantment's Damage modifier
// We just return pi times the level of the enchant (needs to return a float)
builder.calcDamageByCreature = function(thisEnch, level, damageSource) {
    return 3.14159265359f * level;
};

// We want the user to die once hurt so we also provide the onUserHurt function.
builder.onUserHurt = function(thisEnch, entity, attacker, level) {
    entity.sendMessage("Your rage is silenced!");
    entity.onKillCommand();
};

builder.register();
*/