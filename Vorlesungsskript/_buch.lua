-- Quarto benötigt index.qmd, erzeugt daraus aber einen leeren Kapitelkopf.
-- Der Einstiegspunkt soll keine leere Seite und keine Kapitelnummer belegen.
function Header(el)
  if el.level == 1 and pandoc.utils.stringify(el.content) == "" then
    return {}
  end
end

function Image(el)
  -- Diese schmale Tabelle ist bei einer Skalierung nach Breite zu hoch.
  if el.src:match("005%-bdi%-differenzen") then
    el.attributes.width = nil
    el.attributes.height = "190mm"
    return el
  end
  local width = el.attributes.width
  if width and width:match("%%$") and tonumber(width:sub(1, -2)) > 100 then
    el.attributes.width = "100%"
  end
  return el
end

function Table(el)
  local text = pandoc.utils.stringify(el.head)
  if (#el.colspecs == 22 and text:match("21"))
      or (#el.colspecs == 8 and (text:match("T7") or text:match("12 ms")
          or text:match("Voxel")))
      or (#el.colspecs == 6 and text:match("Entscheidung"))
      or (#el.colspecs == 2 and text == "BereichDaten") then
    if FORMAT:match("latex") then return compact_data_table(el) end
  end
  if #el.colspecs == 4 and text:match("Jahr") and text:match("Bedeutung") then
    local widths = {0.10, 0.20, 0.29, 0.41}
    for i, width in ipairs(widths) do el.colspecs[i][2] = width end
    return el
  end
  if #el.colspecs == 6 and text:match("Digitalaffinität") then
    local widths = {0.12, 0.17, 0.15, 0.16, 0.20, 0.20}
    for i, width in ipairs(widths) do el.colspecs[i][2] = width end
    return {pandoc.RawBlock("latex", "\\begingroup\\footnotesize"), el,
            pandoc.RawBlock("latex", "\\endgroup")}
  end
end


-- Kurze Datentabellen als ungeteilte, oben platzierbare Quarto-Floats.
function compact_data_table(tbl)
    local function row(r)
      local cells = {}
      for _, cell in ipairs(r.cells) do
        local value = pandoc.write(pandoc.Pandoc(cell.contents), "latex")
        cells[#cells + 1] = value:gsub("%s+$", "")
      end
      return table.concat(cells, " & ") .. " \\\\\n"
    end
    local aligns = {}
    for _, spec in ipairs(tbl.colspecs) do
      local alignment = {AlignLeft = "l", AlignCenter = "c", AlignRight = "r"}
      aligns[#aligns + 1] = alignment[spec[1]] or "l"
    end
    local fontsize = #tbl.colspecs == 2 and "\\normalsize" or "\\footnotesize"
    local result = "\\begingroup" .. fontsize .. "\n\\begin{tabular}{@{}" ..
      table.concat(aligns) .. "@{}}\n\\toprule\n"
    for _, r in ipairs(tbl.head.rows) do result = result .. row(r) end
    result = result .. "\\midrule\n"
    for _, body in ipairs(tbl.bodies) do
      for _, r in ipairs(body.head) do result = result .. row(r) end
      for _, r in ipairs(body.body) do result = result .. row(r) end
    end
    result = result .. "\\bottomrule\n\\end{tabular}\n\\endgroup"
    return pandoc.RawBlock("latex", result)
end
