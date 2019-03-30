import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

var universalManual = <akashictome:tome>.withTag(
    {
        "akashictome:is_morphing": 1 as byte,
        "akashictome:data": {
            /*
            academy: {
                id: "academy:tutorial",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedMod": "academy"
                },
                Damage: 0 as short
            },
            */

            actuallyadditions: {
                id: "actuallyadditions:item_booklet",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedMod": "actuallyadditions"
                },
                Damage: 0 as short
            },

            astralsorcery: {
                id: "astralsorcery:itemjournal",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedMod": "astralsorcery"
                },
                Damage: 0 as short
            },

            conarm: {
                id: "conarm:book",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedMod": "conarm"
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

            industrialforegoing: {
                id: "industrialforegoing:book_manual",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedmod": "industrialforegoing"
                },
                Damage: 0 as short
            },

            opencomputers: {
                id: "opencomputers:tool",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedmod": "opencomputers"
                },
                Damage: 4 as short
            },

            rftools: {
                id: "rftools:rftools_manual",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedMod": "rftools"
                },
                Damage: 0 as short
            },

            tconstruct: {
                id: "tconstruct:book",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedMod": "tconstruct"
                },
                Damage: 0 as short
            },

            valkyrielib: {
                id: "valkyrielib:guide",
                Count: 1 as byte,
                tag: {
                    "akashictome:definedMod": "valkyrielib"
                },
                Damage: 0 as short
            }
        }
    }
);

universalManual.addTooltip("A manual containing all other in-game manuals.");

recipes.addShapeless("universalManual", universalManual, [<minecraft:dirt>]);
mods.jei.JEI.addItem(universalManual);
mods.initialinventory.InvHandler.addStartingItem(universalManual);
