//
// rebalanced recipes for rustic
//
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


//
/// Evaporate ///
//

// brine -> salt
mods.rustic.EvaporatingBasin.addRecipe(<primal:salt_dust_rock> * 2, <fluid:brine_netjry> * 125);


//
/// Crush ///
//

mods.rustic.CrushingTub.addRecipe(<fluid:blood> * 250, <minecraft:rotten_flesh>, <biomesoplenty:flesh>);


//
/// Alchemy ///
//

// mods.rustic.Condenser.addRecipe(output, input1, input2);
// mods.rustic.Condenser.addRecipe(output, mod, itemstack[] inputs);

//val slownessElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:slowness", Duration: 1800, Amplifier: 0}]});
//val slownessExtendedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:slowness", Duration: 4800, Amplifier: 0}]});

//mods.rustic.Condenser.addRecipe(slownessElixir, <minecraft:web>, <minecraft:vine>);
//mods.rustic.Condenser.addRecipe(slownessExtendedElixir, <rustic:horsetail>, [<minecraft:web>, <minecraft:vine>]);