#priority -101
print("================ Staging 'metalworking' ================");


mods.ItemStages.addItemStage("metalworking", <gamestagebooks:wonders>);
mods.ItemStages.addItemStage("metalworking", <gamestagebooks:flight>);

scripts.staging.stageWholeMod("metalworking", "tconstruct");
scripts.staging.stageWholeMod("metalworking", "conarm");
scripts.staging.stageWholeMod("metalworking", "storagenetwork");

scripts.staging.moveToStageNonCrafting("beginning", <tconstruct:materials:0>); // seared brick

scripts.staging.fullStageItem("metalworking", <minecraft:crafting_table>);

mods.DimensionStages.addDimensionStage("metalworking", -1); // Nether


val gravel = <minecraft:gravel>;
val anySand = <ore:sand>;
val clayBlock = <minecraft:clay>;
val clayBall = <minecraft:clay_ball>;
val grout = <tconstruct:soil:0>;
val anyWoodSlab = <ore:slabWood>;


recipes.remove(grout);
scripts.staging.moveShapelessItemToStage("beginning", grout * 8, [gravel, anySand, gravel, anySand, clayBlock, anySand, gravel, anySand, gravel]);
scripts.staging.moveShapelessItemToStage("beginning", grout * 2, [gravel, anySand, clayBall]);

recipes.remove(<tconstruct:rack:0>);
scripts.staging.moveShapedItemToStage("beginning", <tconstruct:rack:0>
                                     , [ [null,        null,        null]
                                       , [anyWoodSlab, anyWoodSlab, null]
                                       , [null,        null,        null] ]);

recipes.remove(<tconstruct:rack:1>);                                       
scripts.staging.moveShapedItemToStage("beginning", <tconstruct:rack:1>
                                     , [ [null,        null,        null]
                                       , [anyWoodSlab, anyWoodSlab, anyWoodSlab]
                                       , [null,        null,        null] ]);
                                                  