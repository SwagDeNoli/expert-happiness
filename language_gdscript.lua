-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
  name = "GDScript",
  files = { "%.gd$" },
  comment = '#',
  patterns = {
    -- Single line comments
    { pattern = "#.*\n",  type = "comment"  },
    -- Multiline comments
    { pattern = {'"""', '"""'; '\\'},  type = "string" },
    { pattern = {'"', '"'; '\\'},  type = "string" },
    -- Hexa decimal numbers
    { pattern = "0x[%da-fA-F]+",               type = "number"   },
    -- { pattern = "-?%d+[%d%.eE]*",              type = "number"   },
    -- Regular numbers ex -104.100
    { pattern = "-?%.?%d+",                    type = "number"   },
    -- Operators +-/* etc
    { pattern = "[%+%-=/:%*%^%%<>!~|&]",        type = "operator" },
    -- Functions (func function_name)
    { pattern = "[%a_][%w_]*%f[(]",            type = "function" },
    { pattern = "[%a_][%w_]*",                 type = "symbol"   },
  },
  symbols = {
    ["tool"]  =  "keyword",
    ["class_name"]  =  "keyword",
    ["class"]  =  "keyword",
    ["extends"]  =  "keyword",
    ["const"] = "keyword",
    ["enum"] = "keyword",
    ["var"]  =  "keyword",
    ["func"]  =  "keyword",
    ["if"]  =  "keyword2",
    ["elif"]  =  "keyword2",
    ["else"]  =  "keyword2",
    ["for"]  =  "keyword2",
    ["in"]  =  "keyword2",
    ["while"]  =  "keyword2",
    ["return"]  =  "keyword2",
  },
}
