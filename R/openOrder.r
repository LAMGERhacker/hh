openOrder <- function(Connection, Order) 
{
  if(exists('Order'))
  {
        url <- "https://hft-api.lykke.com/api/Orders/limit"
        resp <- httr::POST(url,
                           body = list(AssetPairId = Order$Symbol,
                                       OrderAction = Order$Action,
                                       Volume = Order$Quantity,
                                       Price = Order$Price),
                           httr::add_headers(`api-key` = conn$key),
                           encode = "json")
        return(resp)
  }
}