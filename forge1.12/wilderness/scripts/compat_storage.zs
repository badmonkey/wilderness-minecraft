//
// Chests and crates
//


// Make charm:crate cheaper for early game
recipes.remove(<charm:crate>);
recipes.addShaped("CharmCrate", <charm:crate>
                 , [ [<ore:plankWood>, <ore:stickWood>, <ore:plankWood>]
                   , [<ore:stickWood>, null,            <ore:stickWood>]
                   , [<ore:plankWood>, <ore:stickWood>, <ore:plankWood>] ]);