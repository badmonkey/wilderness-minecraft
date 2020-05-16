//
// Utility functions for staging/unstaging items/blocks/recipes
//
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


function stageWholeMod(stage as string, modname as string) {
    mods.ItemStages.stageModItems(stage, modname);
    mods.recipestages.Recipes.setRecipeStageByMod(stage, modname);
}


function fullStageItem(stage as string, item as IItemStack) {
    mods.ItemStages.addItemStage(stage, item);
    mods.recipestages.Recipes.setRecipeStage(stage, item);
}


function moveToStageNonCrafting(stage as string, item as IItemStack) {
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage(stage, item);
    mods.recipestages.Recipes.setRecipeStage(stage, item);
}


function moveShapelessItemToStage(stage as string, item as IItemStack, ingredients as IIngredient[]) {
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage(stage, item);
    
    mods.recipestages.Recipes.addShapeless(stage, item, ingredients);
}


function moveShapedItemToStage(stage as string, item as IItemStack, ingredients as IIngredient[][]) {
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage(stage, item);
    
    mods.recipestages.Recipes.addShaped(stage, item, ingredients);
}

