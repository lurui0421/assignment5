#' Correlogram Function
#' This function display the correlogram of all numeric variables of input year.
#' @param year Which is your year of interest? Range from 1950 to 2017.
#' @keywords correlogram
#' @export
#' @examples
#' correlogram()

correlogram <- function(data, year){
            sub <- filter(data, Year == year)
            numeric <- keep(sub, is.numeric)
            cor <- cor(numeric[,-1])
            corrplot(cor, method="circle")}
