checkConnection <- function(Connection) 
{
        url <- "https://hft-api.lykke.com/api/IsAlive"
        resp <- httr::GET(url,
                           httr::add_headers(`api-key` = slot(Connection,'Key')),
                           encode = "json")
        return(content(resp, "parsed"))
}