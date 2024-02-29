local symbol = require "cmp-agda-symbols.symbol"

return {
    new = function()
        return {
            get_trigger_characters = function()
                return { "\\" }
            end,
            get_keyword_pattern = function()
                return "\\\\[^[:blank:]]*"
            end,
            complete = function(_, _, callback)
                callback(symbol)
            end
        }
    end,
}
