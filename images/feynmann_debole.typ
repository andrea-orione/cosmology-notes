#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#diagram(
  edge((0,-1), "rd", "-|>-"),
  edge((1, 0), (1, 1), "wave"),
  edge((0, 2), "ru", "-|>-"),
  edge((1,0), "ru", "-|>-", [$g$], label-pos:0.1, label-side:right, label-sep:0.001em),
  edge((1, 1), "rd", "-|>-", [$g$], label-pos:0.1, label-side:left, label-sep:0.001em)
)
