local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

ls.add_snippets("html", {
    s("!", {
        t({
            "<!DOCTYPE html>",
            "<html lang=\"en\">",
            "<head>",
            "    <meta charset=\"UTF-8\">",
            "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">",
            "    <title>Document</title>",
            "</head>",
            "<body>",
            "</body>",
            "</html>"
        })
    })
})
ls.add_snippets("rust", {
    ls.s("match", {
        ls.text_node("match "),
        ls.insert_node(1, "var"),
        ls.text_node(" {\n"),
        ls.function_node(function(args)
            local var = args[1][1] or "Enum"
            local handle = io.popen("rg 'enum " .. var .. "' --context 5")
            if not handle then return {"/* Error: Enum not found */"} end
            local output = handle:read("*a")
            handle:close()
            local variants = {}
            for line in output:gmatch("[A-Za-z0-9_]+::([A-Za-z0-9_]+)") do
                table.insert(variants, "    " .. var .. "::" .. line .. " => {},")
            end
            return variants
        end, {1}),
        ls.text_node("\n}"),
    })
})
