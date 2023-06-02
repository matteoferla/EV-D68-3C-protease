# EV-D68-3C-protease
Follow-up suggestions for EV-D68 3C protease fragment-based drug-discovery campaign of ASAP consortium.

Pipeline name `Enterovirus D68 3C protease`: https://asapdiscovery.org/pipeline/
Family: Picornaviridae
Targeting details: https://www.notion.so/asapdiscovery/Targeting-Opportunity-Enterovirus-3C-protease-A71-89ebfbb23d4d47f6848ecabc432fed17
XChem data: https://fragalysis.diamond.ac.uk/viewer/react/preview/target/D68EV3CPROA

## Notes on target
Protein is a monomer in native state but there is a crystallographic dimer in the structure.
The N-terminal Met of Chain A sits in the active site of Chain B (PDB:8CNX)

### Native substrate
Cannot find a conservation logo, but it's EALFQ↓GPPQF (2C↓3A) and TAKVQ↓GPGFD (3B↓3C)

From paper: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3624371/
![figure](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3624371/bin/zjv9990974800002.jpg)

https://www.rcsb.org/structure/2B0F
2B0F chain B X[ACE]LEALFX[YTF] where YTF is Gln-like+ethylpropionate, where the former has no C-terminal peptide bond,
but a covalent bond to the catalytic Cys. The latter is a glycine.

[rupintrivir](https://en.wikipedia.org/wiki/Rupintrivir) bound to CVA16 3C https://www.ebi.ac.uk/pdbe/entry/pdb/3sji
residue name: AG7
The glutamine terminal amide is replaced by a 2-pyrrolidone.
The phenylalanine benzene has a para-fluoro group.
The rest is backbone interactions basically.

![prior](images/prior.png)

## Reference structure

No reference file provided in Fragalysis... :shrug:
Aligning to first.

## Fragment Preparation

* [Extraction notebook](02_hit-prep/frag-extraction.ipynb)
* [hit theft](02_hit-prep/hit-theft.ipynb)
* [Filter and fragment](02_hit-prep/filter_n_frag.ipynb)

As I know where the native structure is, I can filter out the crap.
![distro](images/hits-native.png)

This leaves with these 19 out of 104.
Stealing ligands from the PDB gives another 25 — see [filtered](images/filtered_hits.png).

Fragmenting these gives 992. Ouch.

## Noteworthy

Of the hits near the catalytic triad, those close to H161 are interesting.
This is because the native substrate has a conserved glutamine at this position (P-1).

![H161_friends](images/H161_friends.png)

Of these, x1604 has a cateshol that interacts with both protonated cys and H

## Merging

* [Fragmenstein merging](03_merge-fragmenstein/fragpipe.ipynb)

Mergers: https://michelanglo.sgc.ox.ac.uk/data/5066835a-a2df-4723-ad92-5adfa622cd74


## To do

* [x] Make reference
* [] Optional: determine RMSD of polymers in each structure
* [x] Extract fragments
* [] Assign library — metadata has SMILES! :tada
* [] Optional: Fragment native substrate
* [x] Select bio relevant fragments
* [] ~Fragmenstein score — not great, but not terrible, ideally proper FEP~ — circumvented by bio relevance
* [] Fragmenstein merger, analogue search, place and PLIP annotate interactions
* [] Fragment network elaborations
* [] Fragmenstein synthon merger, analogue search, place and PLIP annotate interactions
* [] CoPriNet price —I have not installed it yet...
* [] Forcefully organise fragment picking meeting
