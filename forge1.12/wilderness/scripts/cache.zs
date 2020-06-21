#loader contenttweaker
#priority 110

import crafttweaker.item.IItemStack;


static dropNameMap as string[string] = {};
static dropItemMap as IItemStack[string] = {};


function addBlockDrop(blockName as string, itemName as string) {
    scripts.cache.dropNameMap[blockName] = itemName;
}

function getDropForBlock(blockName as string) as IItemStack {
    var item as IItemStack = scripts.cache.dropItemMap[blockName];
    if isNull(item) {
        var itemName as string = scripts.cache.dropNameMap[blockName];
        
        item = itemUtils.getItem(itemName);
        scripts.cache.dropItemMap[blockName] = item;
        
        if isNull(item) {
            print("ERROR: no item drop for " ~ blockName);
        }
    }
    
    return item;
}
