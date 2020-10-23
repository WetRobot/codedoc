


birth_date_to_current_age <- function(birth_date) {
  stopifnot(inherits(birth_date, "Date"))

  # @doc current_age
  # current_age values are formed in function birth_date_to_current_age by counting
  # the number of days between today and the birth day and dividing it by
  # 365.242199
  # @doc current_age

  as.numeric(Sys.Date() - birth_date) / 365.242199
}



age_to_age_group <- function(age) {

  # @doc age_group
  # age_group values are formed in function age_to_age_group. The function
  # creates 5 age groups from age values by splitting
  # the age values at breaks {0, 20, 40, 60, 80, Inf}
  # @doc age_group

  br <- c(0, 20, 40, 60, 80, Inf)
  cut(age, breaks = br, labels = FALSE, right = FALSE)
}


