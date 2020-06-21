#loader contenttweaker
#priority 111

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;


static creativeTab as CreativeTab = VanillaFactory.createCreativeTab("wildernesstab", <item:minecraft:dragon_egg>);
creativeTab.register();

