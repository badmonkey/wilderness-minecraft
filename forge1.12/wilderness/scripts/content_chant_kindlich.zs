#loader contenttweaker

import mods.contenttweaker.enchantments.EnchantmentBuilder;

/*
val builder = EnchantmentBuilder.create("kindlich");

builder.applicableSlots = [mainHand, offhand, feet, legs, chest, head];
builder.setTypeAll();
builder.setRarityCommon();
builder.calcModifierDamage = function(thisEnch, level, damageSource) {
    return level;
};

builder.onUserHurt = function(thisEnch, entity, attacker, level) {
    entity.health = entity.maxHealth;
    if(entity instanceof crafttweaker.player.IPlayer) {
        val player as crafttweaker.player.IPlayer = entity;
        player.foodStats.addStats(100, 10.0f);
    }
};

builder.register();
*/