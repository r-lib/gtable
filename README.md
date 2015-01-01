  ## Moving the x-axis to the top in a facet_wrap-ped ggplot chart
    Make your chart,:

      > c <- geom_point() + facet_wrap(~ a_variable)
  
    make it a gtable,:

      > g <- ggplotGrob(p)

    and take a look at what we're working with. Look for something with a name that looks like the bottom axis:

      > print(g)
      TableGrob (9 x 12) "layout": 17 grobs
         z          cells       name                                    grob
      1  0  ( 1- 9, 1-12) background          rect[plot.background.rect.522]
      2  1  ( 5- 5, 4- 4)    panel-1                gTree[panel-1.gTree.425]
      3  2  ( 5- 5, 7- 7)    panel-2                gTree[panel-2.gTree.437]
      ...
      11 10 ( 6- 6, 4- 4)   axis_b-1 absoluteGrob[axis-b-1.absoluteGrob.457]
      12 11 ( 6- 6, 7- 7)   axis_b-2 absoluteGrob[axis-b-2.absoluteGrob.465]
      13 12 ( 6- 6,10-10)   axis_b-3 absoluteGrob[axis-b-3.absoluteGrob.473]
  
    `axis_b-?` looks like it might mean bottom axis. Cells are expressed as (rows, columns), so our axes are in row 6. We'll need to know that later when we remove row 6 (you can look at row 6 visually with `gtable_show_layout(g)`).

    For now, just take note of the grobs (`absoluteGrob[axis-b-1.absoluteGrob.457`, ...) and match them up with the names or numbers you see in:

      > g$grobs
      [[1]]
      rect[plot.background.rect.522]
      ...
      $axis_b1
      absoluteGrob[axis-b-1.absoluteGrob.457]
      
      $axis_b2
      absoluteGrob[axis-b-2.absoluteGrob.465]
      
      $axis_b3
      absoluteGrob[axis-b-3.absoluteGrob.473]
      ...

    In this case, we just need `$axis_b1`, `$axis_b2`, and `$axis_b3`. We just need to copy these grobs and modify them so the tick marks and numbers are flipped (tick marks should be below the numbers when the axis is on top and vice versa). I'll just use the left-most axis as an example:

      > # copy it
      > axis_t1 <- g$grobs$axis_b1
      > # Swap the positions of ticks and numbers
      > axis_t1$children[[2]]$layout <- axis_t1$children[[2]]$layout[2:1,]
      > # Reset the heights of the boxes holding ticks and numbers so we don't have to deal with relative heights later on
      > axis_t1$children[[2]]$grobs[[1]]$y <- unit.c(unit(0, "cm"), unit(0.15, "cm"))
      > axis_t1$children[[2]]$heights[[1]] <- unit(0.3, "cm")
  
  Then, we just add a new row in the right place and put our modified grob there (and in the right column). Note that gtable_add_rows adds a row below the specified position, so even though we say `pos = 4`, we'll have to add our grobs to the new row, which is row 5.
  
      > g <- gtable_add_rows(g, sum(axis_t1$children[[2]]$heights), pos = 4)
      > g <- gtable_add_grob(g, axis_t1$children[[2]], 5, 4, clip = "off", name="axis_t1")

We also have to remove the old grob(s) and remove the old grobs' row (so there isn't extra space below our chart). I'm going to pretend we've already copied all the axes and go ahead and remove all three bottom axes just to demonstrate. 'NB!:' The row we're removing is no longer #6 because we added a row above it. It's now row 7.

      > g <- gtable_rm_grob(g, names = c('axis_b-1', 'axis_b-2', 'axis_b-3'))
      > g <- gtable_rm_rows(g, 7)

Draw it!

      > plot(g)
