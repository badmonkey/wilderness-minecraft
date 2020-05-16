//
// compatibility recipes for vanilla items
//
import crafttweaker.item.IItemStack;

val dragonflywing = <thebetweenlands:items_misc:3>;
val ironNugget = <ore:nuggetIron> | <ore:nuggetCrudeIron>;


// Early game elytra
recipes.addShaped( "earlygame_elytra", <minecraft:elytra>
                 , [ [dragonflywing, <ore:cordageQuality>,           dragonflywing]
                   , [dragonflywing, <waystones:warp_stone>,         dragonflywing]
                   , [null,          <minecraft:leather_chestplate>, null] ]);
                   

// Cheap primitive compass
recipes.addShaped( <minecraft:compass>
                 , [ [null,       <ore:stickWood>,    null]
                   , [null,       <minecraft:string>, null]
                   , [ironNugget, <primal:iron_pin>,  <minecraft:redstone>] ]); 
                   
                   