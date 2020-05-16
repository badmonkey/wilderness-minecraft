#loader contenttweaker
#priority 100

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;


static creativeTab as CreativeTab = VanillaFactory.createCreativeTab("wilderness", <item:minecraft:dragon_egg>);
creativeTab.register();
