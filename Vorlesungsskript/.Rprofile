# R-Paketumgebung des gemeinsamen PDWP-Quellprojekts verwenden.
local({
  Sys.setlocale("LC_CTYPE", "German_Germany.utf8")
  # Der kanonische Pfad vermeidet Umlautprobleme beim renv-Bootstrap unter Windows.
  old_wd <- setwd("C:/Home/Home/pdwp-online/dirk-ostwald.github.io")
  on.exit(setwd(old_wd), add = TRUE)
  source(".Rprofile", local = FALSE)
})
