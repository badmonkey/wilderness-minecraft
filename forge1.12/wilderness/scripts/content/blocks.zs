#loader contenttweaker
#priority 100

import crafttweaker.data.IData;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;


val blockDetails = {
    blue_obsidian           : {hardness: 100.0, resist: 100.0, toollevel: 4},
    unobtainium_ore         : {hardness: 100.0, resist: 100.0, toollevel: 4},
    void_block              : {hardness: 5000.0, resist: 5000.0, toollevel: 4}, // passable
    broken_bedrock          : {hardness: 100.0, resist: 100.0, toollevel: 4},
    compressed_coal         : {hardness: 20.0, resist: 20.0, toollevel: 3},
    corrupted_soul_stone    : {hardness: 10.0, resist: 10.0, toollevel: 2},
    deep_diamond            : {hardness: 10.0, resist: 100.0, toollevel: 4},
    deepest_ore             : {hardness: 50.0, resist: 100.0, toollevel: 4}
} as IData;


for key, value in blockDetails.asMap() {
    var block = VanillaFactory.createBlock(key, <blockmaterial:rock>);
    block.creativeTab=scripts.wilderness.creativeTab;
    block.setLightOpacity(0);
    block.setLightValue(0);
    block.setBlockHardness(value.memberGet("hardness"));
    block.setBlockResistance(value.memberGet("resist"));
    block.setToolClass("pickaxe");
    block.setToolLevel(value.memberGet("toollevel"));
    block.setBlockSoundType(<soundtype:stone>);
    block.setSlipperiness(0.6);
    block.setPassable(key == "void_block");
    block.register();
}


/*

var antiIceBlock = VanillaFactory.createBlock("anti_ice", <blockmaterial:ice>);
antiIceBlock.setLightOpacity(3);
antiIceBlock.setLightValue(0);
antiIceBlock.setBlockHardness(5.0);
antiIceBlock.setBlockResistance(5.0);
antiIceBlock.setToolClass("pickaxe");
antiIceBlock.setToolLevel(0);
antiIceBlock.setBlockSoundType(<soundtype:snow>);
antiIceBlock.setSlipperiness(0.3);
antiIceBlock.register();

*/