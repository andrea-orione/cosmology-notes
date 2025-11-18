#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#diagram(
  edge((0,-1), "rd", "-|>-"),
  edge((0, 1), "ru", "-|>-"),
  edge((1,0), "ru", "-|>-"),
  edge((1,0), "rd", "-|>-"),
  node((1.3, 0), [$G_F$])
)
