//
// compatibility recipes for charm & quark items
//
import crafttweaker.item.IItemStack;


// Make quark:backpack craftable (and cheapish)
recipes.addShaped("QuarkBackpack", <quark:backpack>
                 , [ [<ore:leather>,        null,              <ore:leather>]
                   , [<ore:leather>,        <minecraft:chest>, <ore:leather>]
                   , [<ore:cordageGeneral>, <ore:leather>,     <ore:cordageGeneral>] ]);
                   
                   