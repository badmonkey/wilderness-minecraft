//
// compatibility recipes for misc mods that don't need their own script file
//
import crafttweaker.item.IItemStack;


// Beneath portal block, is expensive because there's a cheaper way
recipes.addShaped( "beneath_portal", <beneath:teleporterbeneath>
                 , [ [<tconstruct:seared:0>,  <waystones:warp_stone>,  <tconstruct:seared:0>]
                   , [<waystones:warp_stone>, <minecraft:nether_star>, <waystones:warp_stone>]
                   , [<tconstruct:seared:0>,  <waystones:warp_stone>,  <tconstruct:seared:0>] ]);



                   