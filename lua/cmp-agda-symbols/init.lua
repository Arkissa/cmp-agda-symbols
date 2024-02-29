local source = {}

function source.new()
    return setmetatable({}, { __index = source })
end

function source.get_trigger_characters()
    return { "\\" }
end

function source.get_keyword_pattern()
    return "\\\\[^[:blank:]]*"
end

local symbols = require "cmp-agda-symbols.symbol"
function source.complete(_, _, callback)
    callback(vim.tbl_map(function(item)
        item.word = nil
        return item
    end, symbols))
end

return source
