date: 2015-10-27
title: Quickstart

3D Pipeline
===========

This is a guide  to load 3D data into the Data Arena virtual machine.
The format we consider here are object models in [.ply,]({filename}/pages/userguide.md) .obj and other formats.
A few examples are provided in `/local/examples`.

1. Copy the file `/local/examples/box/LoadBox.py`
2. Change the variable `fileToLoad` to the absolute path of your file
3. Load the object with `orun LoadBox.py` in your working directory

To adjust your model, you can add several parameters, such as positioning of object and camera, adding a shader for textures or changing the navigation behaviour.
See other examples or the [API documentation](http://127.0.0.1:8001) for more details.

Motion Capture
==============

In order to visualize motion capture data, you first need to preprocess the data with Houdini and create a .chan file.
TODO: refer to license page?, describe Houdini process

After that you can load the motion capture OTL with `orun /loca/examples/mocap/LoadOTL.py`.
In the menu, you can enter the file path to your .chan file.
The other parameters specify frames, which are left out at start and end of the scene.

Now you can play (Space) the scene, jump between frames (f: forward, b:backward) or seconds (Shift+f, Shift+b).


Parallel Coordinates
====================

This pipeline creates a parallel coordinates diagram from a CSV file.
First, export your spreadsheet as CSV, include the column header and escape non numeric values.
*Mind, that only numeric values can span a dimension.*

With the command `python /local/examples/parallel/builder/builder.py PATH_TO_CSV GROUP_COLUMN` you create the diagram.
The GROUP_COLUMN specifies the coloring in the diagram (values of this column are grouped and should appear in multiple rows).

In the working directory you will find a new directory named after the CSV file.
You can view the website `index.html` locally or run `orun LoadParallel.py` to launch the Data Arena environment.

drishti
=======

We also run visualizations developed with drishti.
This software creates 3D, textured models from image slices.
You can download the program from [GitHub](https://github.com/AjayLimaye/drishti) and create your model.
In the Data Arena, we can open the project file and interact with the visualization.
