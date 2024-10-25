# indexing errors are caught

    Code
      base[2:1, ]
    Condition
      Error in `base[2:1, ]`:
      ! `i` and `j` must be increasing sequences of numbers

---

    Code
      base[c(2, 2), ]
    Condition
      Error in `base[c(2, 2), ]`:
      ! `i` and `j` must be increasing sequences of numbers

---

    Code
      base[, 2:1]
    Condition
      Error in `base[, 2:1]`:
      ! `i` and `j` must be increasing sequences of numbers

---

    Code
      base[, c(1, 1)]
    Condition
      Error in `base[, c(1, 1)]`:
      ! `i` and `j` must be increasing sequences of numbers

