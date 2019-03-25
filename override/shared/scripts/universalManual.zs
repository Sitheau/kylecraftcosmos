import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

var universalManual = <akashictome:tome>.withTag(
    {
        "akashictome:is_morphing": 1 as byte,
        "akashictome:data": {
            actuallyadditions: {
                id: "actuallyadditions:item_booklet",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedMod": "actuallyadditions"
                },
                Damage: 0 as short
            },

            extrautils2: {
                id: "extrautils2:book",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedMod": "extrautils2"
                },
                Damage: 0 as short
            },

            immersiveengineering: {
                id: "immersiveengineering:tool",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedMod": "immersiveengineering"
                },
                Damage: 3 as short
            },

            tconstruct: {
                id: "tconstruct:book",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedMod": "tconstruct"
                },
                Damage: 0 as short
            },
        }
    }
);

universalManual.addTooltip("A manual containing all other in-game manuals.");

recipes.addShapeless("universalManual", universalManual, [<minecraft:dirt>]);
mods.jei.JEI.addItem(universalManual);
mods.initialinventory.InvHandler.addStartingItem(universalManual);
