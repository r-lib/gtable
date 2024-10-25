# as.gtable sensibly converts objects

    Code
      as.gtable(g2, widths = unit(c(1, 1), "cm"))
    Condition
      Warning:
      `widths` truncated to length 1.
    Output
      TableGrob (1 x 1) "layout": 1 grobs
        z     cells   name                  grob
      1 1 (1-1,1-1) layout circle[GRID.circle.9]

---

    Code
      as.gtable(g2, heights = unit(c(1, 1), "cm"))
    Condition
      Warning:
      `heights` truncated to length 1.
    Output
      TableGrob (1 x 1) "layout": 1 grobs
        z     cells   name                  grob
      1 1 (1-1,1-1) layout circle[GRID.circle.9]

---

    Code
      as.gtable(1:5)
    Condition
      Error in `as.gtable()`:
      ! Can't convert an integer vector to a <gtable>.

---

    Code
      as.gtable(g1, foo = "bar")
    Condition
      Error in `as.gtable()`:
      ! Arguments in `...` must be used.
      x Problematic argument:
      * foo = "bar"
      i Did you misspell an argument name?

