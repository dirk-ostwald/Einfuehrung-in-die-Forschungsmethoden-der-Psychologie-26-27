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
