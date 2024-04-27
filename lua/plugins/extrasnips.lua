local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

ls.add_snippets("tex", {
  s("bb", {
    t("\\mathbb{"),
    i(1, "R"),
    t("}"),
  }),
})

ls.add_snippets("tex", {
  s("plot2d", {
    t({ "\\begin{tikzpicture}", " \\begin{axis}", "   \\addplot[color=red]{" }),
    i(1, "exp(x)"),
    t({ "};", " \\end{axis}", "\\end{tikzpicture}" }),
  }),
})

ls.add_snippets("tex", {
  s("plot3d", {
    t({
      "\\begin{tikzpicture}",
      "   \\begin{axis}[",
      "       trig format plots=rad, grid = major, colormap/cool",
      "       ]",
      "     \\addplot3[",
      "     surf, samples = 25, domain= -5:5, shader = faceted",
      "     ]",
      "     {",
    }),
    i(1, "sin(deg(sqrt(x^2+y^2)))/sqrt(x^2+y^2)"),
    t({ "};", " \\end{axis}", "\\end{tikzpicture}" }),
  }),
})

ls.add_snippets("tex", {
  s("txt", {
    t("\\text{"),
    i(1, "placeholder"),
    t("}"),
  }),
})

return {}
