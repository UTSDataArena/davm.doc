Title: User Guide
Date: 2015-10-22 16:40
Category: UserGuide

Welcome to the Data Arena Virtual Machine! This guide will get you started with visualising your data sets.

# What is the Data Arena Virtual Machine?
The Data Arena Virtual Machine is an emulation of the Data Arena software environment. It allows you to
use the same software available at the data arena from your home or office computer, independent of the
operating system that you are running.

# What do I need to run the Data Arena Virtual Machine?
You will need a computer able to run [VirtualBox](https://www.virtualbox.org){:target="_blank"}
(recommended) or VMWare (supported but not tested). These programs are supported on Windows, OSX and Linux.

# What's in the Virtual Machine?
The DAVM runs the [Gentoo Linux](https://www.gentoo.org/){:target="_blank"} operating system. Gentoo is a
highly configurable distribution of linux that allows package management from the source level.

It contains:

* Data Arena Pipelines
* omegalib
* [documentation](http://localhost:8000) as local web pages

# What is the Data Arena Virtual Machine workflow?
Here is the (ideal) workflow:

* Get (latest) DAVM.
* import to virtualbox or vmware
* start up and open console
* look at current pipelines
* make your data available to the pipelines (mounting within vm, copying, network link, etc)
* change data set to conform to data pipeline input, or
* fork dev of a pipeline to accept input based on current data set format
* choose interaction methods
* document pipeline
* push back changes
* bring data to data arena, and plug and play

# How do I use this it?
Simply import the ova file into Virtualbox (or VMWare) and then start it up. If everything went well,
you should be presented with the following screen:

*(insert image of davm desktop)*

For more information on how to import virtual machines into VirtualBox, see this link (link to oracle doc)

# How can I contribute to the Data Arena Virtual Machine?
Set up a github account (todo), make changes, send pull requests!

# How do i get my data in to the Data Arena Virtual Machine?
TODO
