//
// Rework torch recipes to be more consistent
//
// primalcore recipes for reference:
// coal/charcoal + stick -> 4x torch
// clumpFuel + cordage + stick -> 6x torch_wood
// 5 charcoal motes + cordage + stick -> 3x torch_wood
// 

val anyLitTorch = <ore:torch>;
val rosinBall = <thermalfoundation:material:832>;
val tarBall = <thermalfoundation:material:833>;


//
// Move minecraft:torch recipes to be primal:torch_wood recipes
//
recipes.remove(<minecraft:torch>);

recipes.addShapeless(<primal:torch_wood> * 12
                    , [ <ore:blockWool>, <fluid:creosote> * 1000
                      , <ore:stickWood>, <ore:stickWood>, <ore:stickWood>]);
                      
recipes.addShapeless(<primal:torch_wood> * 4, [<ore:stickWood>, rosinBall]);
recipes.addShapeless(<primal:torch_wood> * 4, [<ore:stickWood>, tarBall]);
//fossil:tardrop
                      


//
// Make stone_torch recipes a tad more expensive (since you can't put them out)
//
recipes.remove(<tconstruct:stone_torch>);

recipes.addShapeless(<tconstruct:stone_torch> * 3
                    , [ <fluid:pyrotheum> * 1000
                      , <tconstruct:stone_stick>, <tconstruct:stone_stick>, <tconstruct:stone_stick>]);
                      
recipes.addShaped(<tconstruct:stone_torch> * 8
                 , [ [<tconstruct:stone_stick>, <tconstruct:stone_stick>, <tconstruct:stone_stick>]
                   , [<tconstruct:stone_stick>, <fluid:pyrotheum> * 1000, <tconstruct:stone_stick>]
                   , [<tconstruct:stone_stick>, <tconstruct:stone_stick>, <tconstruct:stone_stick>] ]);                      


//                      
// Additional primal:torch_wood recipes?                      
//
// fluid:bitumen, fluid:napalm    
// ore:cordageGeneral
// ore:slimeball
// ore:clumpFuel                  



//
// Changing torch states (unlit to lit)
//
// primal:torch_wood -> minecraft:torch
// primal:torch_nether -> primal:torch_nether_lit
//

recipes.addShapeless(<minecraft:torch>, [anyLitTorch.reuse(), <primal:torch_wood>]);
recipes.addShaped(<minecraft:torch> * 8
                 , [ [<primal:torch_wood>, <primal:torch_wood>, <primal:torch_wood>]
                   , [<primal:torch_wood>, anyLitTorch.reuse(), <primal:torch_wood>]
                   , [<primal:torch_wood>, <primal:torch_wood>, <primal:torch_wood>] ]);
                   
recipes.remove(<primal:torch_nether_lit>);
recipes.addShapeless(<primal:torch_nether_lit>, [anyLitTorch.reuse(), <primal:torch_nether>]);
recipes.addShaped(<primal:torch_nether_lit> * 8
                 , [ [<primal:torch_nether>, <primal:torch_nether>, <primal:torch_nether>]
                   , [<primal:torch_nether>, anyLitTorch.reuse(),   <primal:torch_nether>]
                   , [<primal:torch_nether>, <primal:torch_nether>, <primal:torch_nether>] ]);                   

