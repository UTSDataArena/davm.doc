Title: User Guide
Date: 2015-10-22 16:40
Category: UserGuide

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
