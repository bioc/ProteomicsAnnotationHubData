.onAttach <- function(libname, pkgname) {
    packageStartupMessage(
        paste("\nThis is ProteomicsAnnotationHubData version",
              packageVersion("ProteomicsAnnotationHubData"), "\n",
            " Read 'ProteomicsAnnotationHubData()' to get started.\n"))

    if (interactive() && .Platform$OS.type == "windows" &&
        .Platform$GUI == "Rgui") {
        Biobase::addVigs2WinMenu("ProteomicsAnnotationHubData")
    }
    msg <- sprintf(
        "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.16")
    .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))
}
