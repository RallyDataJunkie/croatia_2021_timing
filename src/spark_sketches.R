generate_spark_bar = function(df, col, typ='Gap'){
  df %>% gather(key ="Stage",
                value =!!typ, stage_codes) %>%
    group_by(code) %>%
    summarize(spk_ = spk_chr(-!!as.symbol(typ), type ="bar"))
}

highlight_first =  function (...) 
{
  formatter("span",
            style = function(x) ifelse(x==1,
                                       style(display = "block", 
                                             padding = "0 4px",
                                             `color` = "black",
                                             `column-width`='4em',
                                             `border-radius` = "4px",
                                             `background-color` = 'lightgrey'),
                                       style()))
}
