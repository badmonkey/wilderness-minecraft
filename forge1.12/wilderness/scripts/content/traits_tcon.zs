#loader contenttweaker
#modloaded tconstruct
#priority 101
//
// tcon Traits
//
import mods.contenttweaker.tconstruct.TraitBuilder;
import crafttweaker.block.IBlockState;
import crafttweaker.event.IBlockEvent;


//
// agony
//
val agony = mods.contenttweaker.tconstruct.TraitBuilder.create("agony");

agony.localizedName = "Agonizing";
agony.localizedDescription ="\u00a7oDon't play with your prey!\n\u00a7rYour tool is the embodiment of torture, tormenting any entity hit.";
agony.onHit = function(trait, tool, attacker, target, damage, isCritical)
{
    target.addPotionEffect(<potion:midnight:tormented>.makePotionEffect(120, 1));
};
agony.register();


//
// blindrage
//
val rage = mods.contenttweaker.tconstruct.TraitBuilder.create("blindrage");
rage.color = 0x000000;
rage.localizedName = "Blind Rage";
rage.localizedDescription = "\u00a7oWho said you needed to see your enemies?\n\u00a7rDeal quadruple damage when blinded";
rage.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical)
{
    if(attacker.isPotionActive(<potion:minecraft:blindness>))
    {
        return newDamage*4;
    }
    else
    {
        return newDamage;
    }
};
rage.register();


//
// corrode
//
val corrode = mods.contenttweaker.tconstruct.TraitBuilder.create("corrode");
corrode.color = 0x54514a;
corrode.localizedName = "Corrosion";
corrode.localizedDescription = "\u00a7oSizzle, sizzle...\n\u00a7rYou gain attack damage and lose mining speed the lower your durability is, but gain mining speed and lose attack damage the higher it is.";
corrode.getMiningSpeed = function(trait, tool, event)
{
    event.newSpeed = event.originalSpeed*(2-(1.75*tool.damage/tool.maxDamage));
};
corrode.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical)
{
    return newDamage*(0.25+(1.75*tool.damage/tool.maxDamage));
};
corrode.register();


//
// darkness
//
val dark = mods.contenttweaker.tconstruct.TraitBuilder.create("darkness");
dark.color = 0x332c3b;
dark.localizedName = "Eternal Darkness";
dark.localizedDescription = "\u00a7oJoin the dark side...\n\u00a7rYour tool loves the dark so much; it does more damage in the dark.";
dark.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical)
{
    var light = attacker.world.getBrightness(attacker.getX(), attacker.getY(), attacker.getZ());
    return newDamage*(2-light/15);
};
dark.register();


//
// decay
//
val decay = mods.contenttweaker.tconstruct.TraitBuilder.create("decay");
decay.color = 0x000000;
decay.localizedName = "Decaying";
decay.localizedDescription = "\u00a7oHow utterly sinister!\n\u00a7rApplies a withering potion effect to attacked targets. Targets already withering will receive an even stronger potion effect (this ability is capped at Wither IV).";
decay.onHit = function(trait, tool, attacker, target, damage, isCritical)
{
    if(!isNull(target.activePotionEffects))
    {
        for potionEffect in target.activePotionEffects
        {
            if((potionEffect.potion.name == <potion:minecraft:wither>.name) && (potionEffect.amplifier < 3))
            {
                target.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(140, potionEffect.amplifier + 1));
                return;
            }
        }
    }
    target.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(140, 0));
};
decay.register();


//
// dire
//
val dire = mods.contenttweaker.tconstruct.TraitBuilder.create("dire");
dire.color = 0x54514a;
dire.localizedName = "Dire-Hit";
dire.localizedDescription = "\u00a7oIt's super effective!\n\u00a7rYour tool will always land critical hits so long as you are at full health!";
dire.calcCrit = function(trait, tool, attacker, target)
{
    return attacker.health == attacker.maxHealth;
};
dire.register();


//
// hearty
//
val hearts = mods.contenttweaker.tconstruct.TraitBuilder.create("hearty");
hearts.color = 0xff0000;
hearts.localizedName = "Hearty";
hearts.localizedDescription = "\u00a7oShoot the moon!\n\u00a7rHaving more total hearts makes your tool do more damage!";
hearts.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical)
{
    return newDamage * max(1, min(attacker.maxHealth, 60)/10);
};
hearts.register();


//
// lifecycle
//
val life = mods.contenttweaker.tconstruct.TraitBuilder.create("lifecycle");
life.color = 0xff0000;
life.localizedName = "Cycle of Life";
life.localizedDescription = "\u00a7oFrom one to another.\n\u00a7rWhen your tool is damaged, you are healed for the damaged amount.";
life.onToolDamage = function(trait, tool, unmodifiedAmount, newAmount, holder)
{
    holder.heal(newAmount);
    return newAmount;
};
life.register();


//
// rampage
//
val rampage = mods.contenttweaker.tconstruct.TraitBuilder.create("rampage");
rampage.color = 0xffcf00;
rampage.localizedName = "Rampage";
rampage.localizedDescription = "\u00a7oBarbaric, yet effective!\n\u00a7rKilling things makes you stronger for a bit.";
rampage.onHit = function(trait, tool, attacker, target, damage, isCritical)
{
    if(target.health - damage <= 0)
    {
        attacker.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(100, 1, true, true));
    }
};
rampage.register();