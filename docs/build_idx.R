setwd('~/Desktop/Rmd_talk/docs')

files <- list.files(pattern='(zip)|(html)|(Rmd)$')
file_ext <- function(...) tools::file_ext(...)

# Sorting: Move html files to the front
for (i in seq_along(files)) {
    for (j in i:(length(seq_along(files)))) {
        if (file_ext(files[i]) != 'html' && file_ext(files[j]) == 'html') {
            temp <- files[j]
            files[j] <- files[i]
            files[i] <- temp
        }
    }
}

out_str <- paste0('- [', files, '](', files, ')')

out_str <- c('', out_str)

writeLines(out_str, con = 'index.md')