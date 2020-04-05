# Contribution of the Astrocytic Tau Pathology to Synapse Loss in PSP & CBD 

Analysis of synaptic puncta in primary human brain tissue

## Getting Started

These instructions will let you reproduce the workflow of bipartite synapse analysis and astrocytic domain analysis described in our human brain tissue study (doi: preprint). See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

You should have your OS-specific version of the open-source scientific image analysis software and tools:

- ImageJ/Fiji (https://imagej.net/Fiji/Downloads)
- 'SynapseCounter' (https://github.com/SynPuCo/SynapseCounter)

installed before continuing.
Please refer to these site for installation instructions.

```
Give examples
```

### Prepare workspace

To prepare your analysis environment for synapse density assessment of astrocytic domains, please follow this guide:

* Download the folder __GuideFiles__
* Open ImageJ/FIJI as desktop-app.
* Press <Ctrl + Alt + J> to open the *Interactive Interpreter* or use the navigation panes.
  * Paste here the code from __ExtractRois__
 * Open another *Interactive Interpreter* window 
  * Paste the code from __AstDomainDistr__ 


## Extracting synapse densities per bin 

Now, we are going to extract the synapse densities for each extracted ROI/bin, 
which in the whole provide a representation of the (flattened) spatial astrocytic domain. 

### Extract ROIS

Open the test image (/GuideFiles/#TA_homer1_at8.lsm) by dragging it to the ImageJ desktop panel.
Then, add the __RoiSet__ file to the ImageJ working space by drag-and-drop.
Note: check the *labels* and *Numbering* in the ROI-Manager window to visualize the preset ROIs. 

![Image of Roi_extraction](https://github.com/nes-b/AstSyns/blob/master/images_readme/roi_extraction.PNG)

Then navigate to the *Interactive Interpreter - ExtractRois* and press <Ctrl + R> to execute the macro. 
This will extract all ROIs shown in yellow and stack them in the order 1-17.

Next, you can easily apply the preset preprocessing and *Analyze Particles...* pipeline by left-clicking on one of the extracted bins/ROIs and run *Interactive Interpreter - AstDomainDistr*.

![Image of puncta detection](https://github.com/nes-b/AstSyns/blob/master/images_readme/exe_analyzeparticlesmacro_.PNG

A window will pop-up with the values of Count, Total Area, Average Size, %Area and Mean, as highlighted on the lower right. 


## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing



## Authors

* **Nils Briel** - *Initial work* - [nes-b](https://github.com/nes-b)

See also the list of [contributors](https://github.com/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
