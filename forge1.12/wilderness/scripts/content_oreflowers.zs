#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;


val flowerDetails = {
    flower_affine               : "normal, aluminium",
    flower_arrowhead            : "normal, osmium/lapis",
    flower_aveloz               : "desert, redstone",
    flower_camellia             : "normal, flourite/coal",
    flower_catchfly             : "",
    flower_chandelier_tree      : "desert, diamond, tall",
    flower_clover               : "normal, zinc",
    flower_copper_flower        : "desert, copper",
    flower_duckweed             : "",
    flower_flame_lily           : "normal, redstone, tall",
    flower_hauman               : "normal, copper",
    flower_horsetail            : "normal, gold, tall",
    flower_leadplant            : "normal, lead",
    flower_madwort              : "desert, platinium",
    flower_malva                : "normal, cadmium/resonating",
    flower_marigold             : "desert, cadmium/resonating",
    flower_melastoma            : "normal, thorium/iridium",
    flower_milkwort             : "desert, nickel",
    flower_mustard              : "normal, silver",
    flower_paintbrush           : "desert, osmium/lapis",
    flower_poorjoe              : "normal, iron",
    flower_primrose             : "desert, uranium",
    flower_rapeseed             : "desert, silver",
    flower_red_amaranth         : "normal, uranium",
    flower_red_sorrel           : "desert, iron",
    flower_sheeps_fescue        : "desert, lead",
    flower_shrub_violet         : "normal, nickel",
    flower_stoneroot            : "other, stone",
    flower_tansy                : "normal, tin, tall",
    flower_vallozia             : "normal, diamond",
    flower_zilla                : "desert, zinc",
    iron_metalcap               : "other, iron"
} as string[string];


for key in flowerDetails {
    var flower = VanillaFactory.createBlock(key, <blockmaterial:plants>);
    flower.creativeTab=scripts.wilderness.creativeTab;
    flower.setPassable(true);
    flower.setLightOpacity(0);
    flower.setLightValue(0);
    flower.setBlockHardness(0);
    flower.setBlockResistance(0);
    flower.setFullBlock(false);
    flower.setBlockSoundType(<soundtype:plant>);
    flower.setToolLevel(0);
    flower.setBlockLayer("CUTOUT");
    flower.setAxisAlignedBB(AxisAlignedBB.create(0.3, 0.0, 0.3, 0.7, 1.0, 0.7));
    flower.register();
}


