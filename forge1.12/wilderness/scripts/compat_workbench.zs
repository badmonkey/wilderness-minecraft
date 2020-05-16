//
// Workbench progression
//
// primal:worktable_shelf     ore:craftingtable
// primal:worktable_slab    
// 
// minecraft:crafting_table (stage:MetalWorking)
//
// tconstruct:tooltables:0    craftstation
//
// tconstruct:tooltables:3    toolstation
//


// crafting station slightly more expensive                    
recipes.remove(<tconstruct:tooltables:0>);
recipes.addShapeless(<tconstruct:tooltables:0>
                    , [<ore:workbench>, <primal:iron_pin>]);


// add iron 3 iron pins to toolstation to stop of early flint tools
recipes.remove(<tconstruct:tooltables:3>);
recipes.addShaped(<tconstruct:tooltables:3>
                 , [ [null, <tconstruct:pattern>, null]
                   , [<primal:iron_pin>, <primal:iron_pin>, <primal:iron_pin>]
                   , [null, <tconstruct:tooltables:0>, null] ]);


// remove natura wood workbenches
recipes.remove(<natura:overworld_workbenches:0>);   // maple
recipes.remove(<natura:overworld_workbenches:1>);   // silverbell
recipes.remove(<natura:overworld_workbenches:2>);   // amaranth
recipes.remove(<natura:overworld_workbenches:3>);   // tiger
recipes.remove(<natura:overworld_workbenches:4>);   // willow
recipes.remove(<natura:overworld_workbenches:5>);   // eucalyptus
recipes.remove(<natura:overworld_workbenches:6>);   // hopseed
recipes.remove(<natura:overworld_workbenches:7>);   // sakura
