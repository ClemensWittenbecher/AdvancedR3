#' Calculate descriptive statistics of each metabolite.
#'
#' @param data Lipidomics dataset.
#'
#' @return A data.frame/tibble.
#'
descriptive_stats <- function(data) {
    data %>%
        dplyr::group_by(metabolite) %>%
        dplyr::summarise(dplyr::across(value, list(mean = mean, sd = sd))) %>%
        dplyr::mutate(dplyr::across(tidyselect::where(is.numeric), ~round(.x, digits = 1)))
}
#' Metabolite distribution plot function
#'
#' @param data Lipidomics dataset.
#'
#' @return a facet plot with histograms
#'
plot_distributions <-
    function(data){
        data %>%
            ggplot2::ggplot(aes(x = value)) +
            ggplot2::geom_histogram() +
            ggplot2::facet_wrap(vars(metabolite), scales = "free")
    }
