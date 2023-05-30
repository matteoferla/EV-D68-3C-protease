## PyMOL snippet junkyard

Code used in PyMol.
My `.pymolrc` adds colours.

## Lay of the land

```pymol
fetch 2B0F
show sticks, chain B and 2B0F
color teal, chain B and 2B0F and element C
show sticks, (byres chain B around 3) and 2B0F

fetch 3SJI
show sticks, resn AG7
color coral, resn AG7 and element C
show sticks, (byres resn AG7 around 3) and 3SJI

load D68EV3CPROA-x1741_0B_bound.pdb
align 3SJI, D68EV3CPROA-x1741_0B_bound and chain A
align 2B0F, D68EV3CPROA-x1741_0B_bound and chain A

hide sticks
show sticks, D68EV3CPROA-x1741_0B_bound and byres (resn AG7 or (chain B and 2B0F)) around 3
show sticks, resn AG7 or (chain B and 2B0F)
zoom resn AG7

ray 4266, 3100, async=1
```

