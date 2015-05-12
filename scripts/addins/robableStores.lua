blip = {}
local stores = {{-50.5,-1759.5,30},{26.5,-1345.8,30},{-711.5,-912.8,30},{-1223.3,-905.6,30},{-1488.7,-381.2,30},
{1137.6,-981.5,30},{1159.8,-322.3,30},{377.6,327,30},{2555.2,385.5,30},{-1824.5,790.6,30},{-2970.2,390.3,30},
{-3042.3,588.4,30},{-3242.7,1004.8,30},{544.7,2670.2,30},{2679,3284.8,30},{1962.4,3743,30},{1392.4,3603.1,30},
{1702.3,4927.9,30},{1731,6411,30}}

local robableStores = {}

function robableStores.unload()
	robableStores.clearBlips()
end

function robableStores.init()
	robableStores.loadBlips()
end

function robableStores.loadBlips()
    for i, coords in ipairs(stores) do
        blip[i] = UI.ADD_BLIP_FOR_COORD(coords[1],coords[2],coords[3])
        UI.SET_BLIP_SPRITE(blip[i], 52)
        UI.SET_BLIP_AS_SHORT_RANGE(blip[i], true)
    end
end

function robableStores.clearBlips()
    for i, coords in ipairs(stores) do
        blip[i] = UI.ADD_BLIP_FOR_COORD(coords[1],coords[2],coords[3])
		UI.REMOVE_BLIP(blip[i])
    end
end

function robableStores.tick()
end


return robableStores