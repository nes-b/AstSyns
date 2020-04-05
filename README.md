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
  * Paste here the code from __extractRois__
 * Open another *Interactive Interpreter* window 
  * Paste the code from __AstDomainDistr__ 


## Extracting synapse densities per bin 

Now, we are going to extract the synapse densities for each extracted ROI/bin, 
which in the whole provide a representation of the (flattened) spatial astrocytic domain. 

### Extract ROIS

Open the test image (/GuideFiles/#TA_homer1_at8.lsm) by dragging it to the ImageJ desktop panel.
Then, add


```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
