# Measuring Bipartite Synapse Density and the Synaptic Island  

Analysis of synaptic puncta in primary human brain tissue.

## Getting Started

These instructions will let you reproduce the workflow of bipartite synapse analysis and astrocytic domain analysis described in our human brain tissue study (doi: preprint). See below for notes on how to deploy the scripts on your system.

### Prerequisites

You should have your OS-specific version of the open-source scientific image analysis software:

- ImageJ/Fiji (https://imagej.net/Fiji/Downloads)
and its tool
- 'SynapseCounter' (https://github.com/SynPuCo/SynapseCounter)

installed before continuing.
Please refer to these site for installation instructions.
All macro scripts were written in *.ijm*
Note: file names are written in *underscore_case*, whereas script names are written in *camelCase*.

## Bipartite Synapse - Density Measurement

### Prepare workspace

To prepare your analysis environment for synapse density assessment of randomly sampled images across the frontal cortex or striatal anterior caudate nucleus or putamen, please follow this guide:

* Download the folder __guide_files__ and navigate to the folder using your file explorer.
* Open ImageJ/FIJI on desktop.
* Press <Ctrl + J> to open the *Interactive Interpreter* or use the navigation panes.
  * Paste the code from __ExcitPreprocess__ 

### Synapse Counter 
Assuming a functional bipartite synapse needs a spatial proximity of both pre- and postsynapses, the *SynapseCounter* tests every two neighbouring puncta for its colocalization (2D overlap) of >= 0.33 (default). 
We define synapses fulfilling this requirement as a (excitatory or inhibitory) bipartite unit. 

Markers to distinguish the type / quality of a synpase used in this approach were:

type | presynaptic | postsynaptic
------------ | ------------- | -------------
__excitatory__ | vGLUT1 | HOMER1
__inhibitory__ |vGAT | GEPHYRIN

To get the synapse numbers in from an exemplary sample of a human control subject please open the file __#ctrl_homer1_vglut1.lsm__  by dragging it to the ImageJ desktop-pane.

Preprocess the image using the __ExcitPreprocess__ script by pressing <Ctrl + R> in the interpreter window.

![Image of excit preprocessing](https://github.com/nes-b/AstSyns/blob/master/images_readme/syncount_excit_wf.PNG)

Initiatlize the *SynapseCounter*-Tool and select select the following paramters for excitatory synapses:

![Image of synapse counter settings](https://github.com/nes-b/AstSyns/blob/master/images_readme/syncount_excit_paramsPNG.PNG)

Thereby, from your 2-channel image you retrieve the values of single counts (pre- /postsynaptic) and colocalzation.
To calculate the density, we divide this absolute numbers by the extent of our ROI (50.61^2) um^2,

so that, e.g. 

633 synapses / 2561.3721 um^2‬ = 0.247 synapses/um^2


## Astrocyte Domain - Synapse Density

### Prepare workspace

To prepare your analysis environment for synapse density assessment of astrocytic domains, please follow this guide:

* Download the folder __guide_files__ or navigate into the already downlowded folder using your file explorer.
* Open ImageJ/FIJI as desktop.
* Press <Ctrl + J> to open the *Interactive Interpreter* or use the navigation panes.
  * Paste the code from __ExtractRois__
* Open another *Interactive Interpreter* window 
  * Paste the code from __AstDomainDistr__ 


## Extracting synapse densities per bin 

Now, we are going to extract the synapse densities for each extracted ROI/bin, 
which in the whole provide a representation of the (flattened) spatial astrocytic domain. 

### Extract ROIS from raw image

Open the test image (/GuideFiles/#TA_homer1_at8.lsm) by dragging it to the ImageJ desktop panel.
Then, add the __RoiSet__ file to the ImageJ working space by drag-and-drop.
Note: check the *Labels* and *Show All* in the ROI-Manager window to visualize the preset ROIs. 

![Image of Roi_extraction](https://github.com/nes-b/AstSyns/blob/master/images_readme/roi_extraction_ap.PNG)

As we can see, 17 bins of 27^2 um^2 each represent 5 different distances of concentric circular areas in this image:
 * center: 1
 * close:  2,5,8,11
 * mid:    3,6,9,12
 * dist:   4,7,10,13
 * out:    14,15,16,17

### Detect synaptic puncta
Then navigate to the *Interactive Interpreter - ExtractRois* and press <Ctrl + R> to execute the macro. 
This will extract all ROIs shown in yellow and stack them in the order 1-17.

Next, you can easily apply the preset preprocessing and *Analyze Particles...* pipeline by left-clicking on one of the extracted bins/ROIs and run *Interactive Interpreter - AstDomainDistr*.

![Image of puncta detection](https://github.com/nes-b/AstSyns/blob/master/images_readme/exe_analyzeparticlesmacro_ap.PNG)

A window will pop-up with the values of Count, Total Area, Average Size, %Area and Mean, as highlighted on the lower right. 
For further analyses, only the *Counts* argument will be used.

After applying this workflow to every extracted ROI, calculating the mean of each distance circle area for every imaged astrocytic domain, we obtain the values of distance circle-specific as well as cohort-specific synaptic density measurements. 



## Contributing

See also the preprint/manuscript on (server/journal)

Katrin Pratsch, Dr. Sigrun Roeber, Dr. Thomas Arzberger, Prof. Dr. med. Jochen Herms

Center for Neuropathology
German Center for Neurodegenerative Diseases, Translational Research
University Hospital Munich

## Authors

* **Nils Briel** - [nes-b](https://github.com/nes-b)

See also the list of [contributors](https://github.com/contributors) who participated in this project.

## Citation

If you use this workflow please cite:
- https://github.com/nes-b/AstSyns/
or 
- preprint doi / journal

## License

This project is licensed under the Apache License (version 2.0) - see the [LICENSE](LICENSE) file for details

## Acknowledgments

* Thanks to Tanja Blume, José Medina Luque, Dr. Carmelo Sgobio and Dr. Dr. Mario Dorostkar for valuable conceptional and technical input.
* Thanks also to the developers of the *Synapse Counter* Egor Dzyubenko and Andrey Rozenberg for making available such a helpful and easy to access tool.
