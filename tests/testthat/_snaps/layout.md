# Adding multiple grobs

    Code
      gtable_add_grob(layout, grobs, c(1:3), 1, 3, 3)
    Condition
      Error in `gtable_add_grob()`:
      ! Not all inputs have either length 1 or same length same as `grobs`

---

    Code
      gtable_add_grob(layout, grobs, tval, 1:2, 3, 3)
    Condition
      Error in `gtable_add_grob()`:
      ! Not all inputs have either length 1 or same length same as `grobs`

---

    Code
      gtable_add_grob(layout, grobs, tval, 1, 3, 3, z = 1:4)
    Condition
      Error in `gtable_add_grob()`:
      ! Not all inputs have either length 1 or same length same as `grobs`

