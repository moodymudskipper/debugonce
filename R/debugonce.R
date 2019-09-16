debugonce_addin <- function(){
  selection <- rstudioapi::primary_selection(
    rstudioapi::getSourceEditorContext())[["text"]]
  rstudioapi::sendToConsole("",execute = F)
  eval(parse(text=paste0("debugonce(",selection,")")))
}
