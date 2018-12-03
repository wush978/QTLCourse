check_version <- function() {
  rv <- package_version(paste(R.Version()$major, R.Version()$minor, sep = "."))
  if (rv < package_version("3.2.3")) {
    message(sprintf(readRDS(.get_path("pattern.Rds")), rv, "3.3.3"))
  }
  if (packageVersion("swirl") <= package_version("101.5.9")) {
    message(readRDS(.get_path("swirl_msg.Rds")))
    FALSE
  } else TRUE
}
