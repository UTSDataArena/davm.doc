title: User Guide
sortorder: 03

Welcome to the Data Arena Virtual Machine! This guide will get you started with visualising your data sets.

PLY File Format
===============

The PLY format provides a basic description of 3D objects. Data in this format can easily be displayed in the Data Arena.
Meta information and the data itself is represented in a plain text file with the following format:

	ply
	format ascii 1.0  
	element vertex 2
	property float x
	property float y
	element face 1 
	property list uchar int vertex_index
	end_header
	0 0
	0 1
	2 0 1

The first two lines, as well as *end_header*, are mandatory for each file. The actual data is located after the header until the end of the file.

* *element* introduces a data description, the example object has two vertices
* *property* describes the structure of one vertex data entry, each vertex consists of two float values (namely x and y)
* *face* elements are of type *list*, represented in the following structure
	- the head of a list is of type *uchar* and specifies the list length
	- each list entry is of type *int*
	- the list is named *vertex_index*, each value in the list represents the index of an earlier listed vertex
	- all vertices of a list describe one face of the object

After the header, the actual data follows. First all vertex elements, one each line, with its properties separated by a blank space.
As the number of vertices was specified before, the next elements (faces) follow without indication.

The most important property data types are: *char*, *uchar*, *int*, *float* and *double*.
An optional keyword to describe the data in the header is *comment* followed by any text.


Extensive documentation can be found [here](http://paulbourke.net/dataformats/ply/).


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
