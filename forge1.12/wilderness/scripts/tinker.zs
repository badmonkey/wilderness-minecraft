#modloaded tconstruct
#priority 110
//
// Helper functions for dealing with tinker recipes.
//
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;


function addBasicCastingReceipes( molten as ILiquidStack
                                , ore as IItemStack
                                , nugget as IItemStack
                                , ingot as IItemStack
                                , block as IItemStack) {
    if !isNull(ore) {
        mods.tconstruct.Melting.addRecipe(molten * 288, ore);
    }

    if !isNull(nugget) {
        mods.tconstruct.Melting.addRecipe(molten * 16, nugget);
        mods.tconstruct.Casting.addTableRecipe(nugget, <item:tconstruct:cast_custom:1>, molten, 16);
    }
    
    if !isNull(ingot) {
        mods.tconstruct.Melting.addRecipe(molten * 144, ingot);
        mods.tconstruct.Casting.addTableRecipe(ingot, <item:tconstruct:cast_custom:0>, molten, 144);
    }
    
    if !isNull(block) {
        mods.tconstruct.Melting.addRecipe(molten * 1296, block);
        mods.tconstruct.Casting.addBasinRecipe(block, null, molten, 1296);
    }
}

function addBasicMaterialRecipes( ore as IItemStack
                                , nugget as IItemStack
                                , ingot as IItemStack
                                , block as IItemStack) {

    if !isNull(nugget) && !isNull(ingot) {
        recipes.addShapeless(nugget * 9, [ingot] );
        recipes.addShapeless(ingot, [nugget, nugget, nugget, nugget, nugget, nugget, nugget, nugget, nugget] );
    }
    
    if !isNull(ingot) && !isNull(block) {
        recipes.addShapeless(ingot * 9, [block] );
        recipes.addShapeless(block, [ingot * 9] );
    }
}