//
// rebalanced recipes for primal core
//
import crafttweaker.item.IItemStack;

val bluestone = <primal:blue_stone:0>;
val carbonate = <ore:stoneCarbonate>;
val groundRoot = <thebetweenlands:items_crushed:44>;
val cinnabar = <thermalfoundation:material:866>;
val uraniumGrit = <immersiveengineering:metal:14>;
val ghostPlant = <midnight:ghost_plant>;
val dragonNest = <midnight:dragon_nest>;
val anyRawMeat = <ore:listAllmeatraw>;


//
/// Cauldron ///
//
                   
// lava + carbonate + bluestone -> sarsen_stone                   
mods.primal.Cauldron.addRecipe("icantbeleiveitsnotsarsen", 8
                              , <fluid:lava> * 250, null
                              , [carbonate * 2, bluestone * 2]
                              , [<primal:sarsen_stone:0> * 4]);                   

                              
// lava + grout + brick -> seared brick
mods.primal.Cauldron.addRecipe("tc_seared_brick", 6
                              , <fluid:lava> * 125, null
                              , [<tconstruct:soil:0>, <minecraft:brick>]
                              , [<tconstruct:materials:0>]);
                              

// water + sand -> brine + ash + slag
mods.primal.Cauldron.addRecipe("boiled_sand", 2
                              , <fluid:water> * 1000, <fluid:brine_netjry> * 1000
                              , [<minecraft:sand> * 16]
                              , [<biomesoplenty:ash> * 8, <primal:slag> * 4]);
                              

// anyRawMeat -> fleshchunk
mods.primal.Cauldron.addRecipe("congealed_meat", 2
                              , null, null
                              , [anyRawMeat]
                              , [<biomesoplenty:fleshchunk>]);
                              

// mana + minecraft:book + midnight:ghost_plant -> thermalfoundation:tome_experience + uraniumGrit + miasma
mods.primal.Cauldron.addRecipe("infuse_book", 3
                              , <fluid:mana> * 1000, <fluid:miasma> * 1000
                              , [<minecraft:book>, ghostPlant * 2]
                              , [<thermalfoundation:tome_experience>, uraniumGrit * 3]);


// blood + rustic:ginseng + midnight:dragon_nest + groundRoot -> mana                                
mods.primal.Cauldron.addRecipe("primal_mana", 4
                              , <fluid:blood> * 250, <fluid:mana> * 125
                              , [<rustic:ginseng> * 2, dragonNest, groundRoot]
                              , []);                              


//mods.primal.Cauldron.addRecipe("making_ferro", 0.5,
//                               <liquid:ironberryJuice>*25, <liquid:waste>*25,
//                               [<primal:carbonate_stone>], [<primal:ferro_stone>]);


//
/// Sariras ///
//

// mods.primal.Smelter.addRecipe(String recipe_name, int cook_time, IIngredient[] item_inputs, IItemStack[] item_outputs);


//
/// Hibachi ///
//

// mods.primal.Hibachi.addRecipe(String recipe_name, int cook_time, IIngredient input,IItemStack output);
                 

//
/// Quern ///
//

// mods.primal.Quern.addRecipe(String recipe_name, int work_time, IIngredient[] item_inputs, IItemStack[] item_outputs);


//
/// Drying Racks ///
//

// mods.primal.DryingRack.addRottingRecipe(String recipe_name, int dry_time, int rot_chance, IIngredient input_item, IItemStack rot_output, IItemStack output);
// mods.primal.DryingRack.addNonRottingRecipe(String recipe_name, int dry_time, IIngredient input, IItemStack output);
