#loader contenttweaker
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.AxisAlignedBB;


val indicatorDetails = {
    bauxite         : {hardness: 2.0, resist: 6.0, toollevel: 2},
    bismuth         : {hardness: 2.0, resist: 6.0, toollevel: 2},
    coal            : {hardness: 2.0, resist: 6.0, toollevel: 2},
    copper          : {hardness: 2.0, resist: 6.0, toollevel: 2},
    diamond         : {hardness: 2.0, resist: 6.0, toollevel: 2},
    emerald         : {hardness: 2.0, resist: 6.0, toollevel: 2},
    gold            : {hardness: 2.0, resist: 6.0, toollevel: 2},
    iron            : {hardness: 2.0, resist: 6.0, toollevel: 2},
    lapis           : {hardness: 2.0, resist: 6.0, toollevel: 2},
    lead            : {hardness: 2.0, resist: 6.0, toollevel: 2},
    nether_quartz   : {hardness: 2.0, resist: 6.0, toollevel: 2},
    nickel          : {hardness: 2.0, resist: 6.0, toollevel: 2},
    platinum        : {hardness: 2.0, resist: 6.0, toollevel: 2},
    quartz          : {hardness: 2.0, resist: 6.0, toollevel: 2},
    redstone        : {hardness: 2.0, resist: 6.0, toollevel: 2},
    silver          : {hardness: 2.0, resist: 6.0, toollevel: 2},
    stone           : {hardness: 2.0, resist: 6.0, toollevel: 2},
    tin             : {hardness: 2.0, resist: 6.0, toollevel: 2},
    uranium         : {hardness: 2.0, resist: 6.0, toollevel: 2},
    zinc            : {hardness: 2.0, resist: 6.0, toollevel: 2}
} as IData;


for key, value in indicatorDetails.asMap() {
    var item = VanillaFactory.createItem("lump_" ~ key);
    item.creativeTab = scripts.wilderness.creativeTab;
    item.maxStackSize = 32;
    item.register();
    
    scripts.cache.addBlockDrop("contenttweaker:indicator_" ~ key, "contenttweaker:lump_" ~ key);
    
    var block = VanillaFactory.createBlock("indicator_" ~ key, <blockmaterial:rock>);
    block.creativeTab = scripts.wilderness.creativeTab;
    block.setLightOpacity(0);
    block.setLightValue(0);
    block.setFullBlock(false);
    //flower.setPassable(true);
    block.setBlockHardness(value.memberGet("hardness"));
    block.setBlockResistance(value.memberGet("resist"));
    block.setToolClass("pickaxe");
    block.setToolLevel(value.memberGet("toollevel"));
    block.setBlockSoundType(<soundtype:stone>);
    block.setSlipperiness(0.6);
    block.setAxisAlignedBB(AxisAlignedBB.create(0.3, 0.0, 0.3, 0.7, 0.2, 0.7));
    block.setDropHandler(function(drops, world, position, state, fortune as int) {
        var oreName as string = state.getBlock().definition.id;
        var lump as IItemStack = scripts.cache.getDropForBlock(oreName);

        drops.clear();
        drops.add(lump);
        //drops.add(lump * (fortune+1));

        return;
    });
    block.register();
}
