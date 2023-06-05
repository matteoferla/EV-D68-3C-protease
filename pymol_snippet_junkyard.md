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

    show sticks,  resi 22+40+147+161

For [x1604 note](x1604.md)

## Merging

```pymol
set_view (\
    -0.407784760,   -0.248954952,    0.878479660,\
    -0.554373801,    0.831974506,   -0.021558451,\
    -0.725513041,   -0.495793968,   -0.477282017,\
    -0.000274975,   -0.000899108,  -48.666400909,\
   -10.033691406,   13.684667587,  -34.947368622,\
   -40.962989807,  138.171524048,  -20.000000000 )
```