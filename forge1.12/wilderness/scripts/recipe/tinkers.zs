#modloaded tconstruct
//
// Tweaks for tinkers
//
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;

val searedbricks = <tconstruct:materials:0>;
val anyWoodSlab = <ore:slabWood>;


recipes.addShaped( <tconstruct:seared_furnace_controller>
                 , [ [searedbricks, searedbricks,  searedbricks]
                   , [searedbricks, <ore:hibachi>, searedbricks]
                   , [searedbricks, searedbricks,  searedbricks] ]);
                   
recipes.addShapeless( <tconstruct:rack:0>
                    , [anyWoodSlab, anyWoodSlab, <ore:stickWood>] );
                    
                    
//
// Molten stone
//                    
mods.tconstruct.Melting.addRecipe(<liquid:stone>*18, <ore:rockStone>);
mods.tconstruct.Melting.addRecipe(<liquid:stone>*18, <ore:rockGranite>);
mods.tconstruct.Melting.addRecipe(<liquid:stone>*18, <ore:rockDiorite>);
mods.tconstruct.Melting.addRecipe(<liquid:stone>*18, <ore:rockAndesite>);
mods.tconstruct.Melting.addRecipe(<liquid:stone>*18, <ore:rockMarble>);
mods.tconstruct.Melting.addRecipe(<liquid:stone>*18, <ore:rockBasalt>);
mods.tconstruct.Melting.addRecipe(<liquid:stone>*18, <ore:rockLimestone>);
                    
                    
//
// Slaked Lime
//

//mods.tconstruct.Melting.addRecipe(<liquid:moltenSlakedLime> * 144, <ore:slackLime>);                    
                               

//scripts.tinkers.addBasicMoltenRecipes( <liquid:slakedLime>
//                                     , <primal:carbonate_stone>
//                                     , null
//                                     , null
//                                     , null);
// mods.tconstruct.Casting.addBasinRecipe(ore, null, molten, 288);


//
// Midnight
//
scripts.tinker.addBasicCastingReceipes( <liquid:nagrilite>
                                      , <item:midnight:nagrilite_ore>
                                      , <item:midnight:nagrilite_nugget>
                                      , <item:midnight:nagrilite_ingot>
                                      , <item:midnight:nagrilite_block>);

scripts.tinker.addBasicCastingReceipes( <liquid:tenebrum>
                                      , <item:midnight:tenebrum_ore>
                                      , <item:midnight:tenebrum_nugget>
                                      , <item:midnight:tenebrum_ingot>
                                      , <item:midnight:tenebrum_block>);


val caliginumNugget = <item:contenttweaker:material_part:3>;
val caliginumIngot = <item:contenttweaker:material_part:2>;
val caliginumBlock = <contenttweaker:sub_block_holder_0:0>;

mods.tconstruct.Alloy.addRecipe(<liquid:caliginum> * 3, [<liquid:tenebrum> * 2, <liquid:nagrilite> * 1]);

scripts.tinker.addBasicCastingReceipes( <liquid:caliginum>
                                      , null
                                      , caliginumNugget
                                      , caliginumIngot
                                      , caliginumBlock);

scripts.tinker.addBasicMaterialRecipes( null
                                      , caliginumNugget
                                      , caliginumIngot
                                      , caliginumBlock);


//
// Betweenlands
//

//
// Stygian/Defiled
//
//mods.tconstruct.Alloy.addRecipe(<liquid:stygium>*144, [<liquid:endacid>*125, <liquid:vitalium>*72]);



//scripts.tinker.addBasicCastingRecipes();
// octine
// symorine

// 2* bogiron cluster = 288mb iron
// 2* zinc = 288mb zinc
// 2* magnetite = wootz steel ingot, 4 steel nuggets, 3 iron nuggets

// limestone  slackLime
// specialCarbon

// copperOre => ore ingot + 3 nuggets

//primal:ore_bog_iron:0
//primal:ore_bog_iron:1
//primal:ore_bog_iron:2

//primal:ore_cluster_bog_iron
//primal:ore_cluster_magnetite
//primal:ore_cluster_zinc

// copper + silver -> primal:shibuichi_ingot
// primal:tamahagane_bloom -> primal:tamahagane_ingot -> steel


//slackedLime
//coal

//creosote
