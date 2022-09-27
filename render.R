cias <- voos %>% select(companhia_aerea) %>% unique()

render_one <- function(cia_area = companhia_aerea) {
  rmarkdown::render(
    'teste.Rmd',
    output_file = paste0(cia_area, '.docx'),
    output_dir = "C:/Users/iarac/Documents/MEGA/R/aula/reports",
    params = list(cia_area = companhia_aerea),
    envir = parent.frame()
  )
}


for (companhia_aerea in cias$companhia_aerea){
  render_one(cia_area = companhia_aerea)
}

