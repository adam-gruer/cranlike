
#' @export

package_versions <- function(dir = ".") {
  db_file <- get_db_file(dir)

  if (!file.exists(db_file)) stop("Database does not exist")

  with_db(db_file, {
    dbGetQuery(db, "SELECT Package, Version FROM packages")
  })
}