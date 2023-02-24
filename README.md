# TopoView3D
Visualise topographic data in 3D using Octave

### Acquiring the Topography Data
The first thing you will need to do is download the OS Terrain 50 dataset (~400MB). This is freely available via [OS OpenData](https://www.ordnancesurvey.co.uk/opendatadownload/products.html). Its a bit of a pain but you only need to do this once.

1. Scroll down to the section entitled "OS Terrain 50".
2. Select "ASCII Grid and GML" from the dropdown menu.
3. Check the SECOND checkbox ("Download").
4. Scroll down to the bottom of the page.
5. Click on the "next" button.
6. Fill out the form (they will send you a download link via enail)
7. Click continue.
8. When you have downloaded the data you should end up with a directory called "terr50_gagg_gb", containing another directory called "data" and a file called "licence.txt".
9. Place the "terr50_gagg_gb" directory within the TopoView£D directory.

Using a similar process and making some simple tweak you can use other datasets provided by OS OpenData.

### Visualising the Data
To generate a 3D model from the data you will need to know the OS grid reference about which you wish to centre the model. You must also specify how many tiles of "padding" you would like to add around the central tile.
Here are some examples:

Ben Nevis with 1 tile padding.
```
$ ./run.sh NN1060 1
```
![](https://raw.github.com/autonomoid/TopoView3D/master/example_results/Ben_Nevis.png)

The Cuillins (Skye) with 1 tile padding.
```
$ ./run.sh NG4520 1
```
![](https://raw.github.com/autonomoid/TopoView3D/master/example_results/Cuillins.png)

Scafell Pike with 1 tile padding.
```
$ ./run.sh NY2107 1
```
Helvellyn with 1 tile padding.
```
$ ./run.sh NY3415 1
```
Snowdon with 1 tile padding.
```
$ ./run.sh SH6054 1
```
Kinder Scout with 1 tile padding.
```
$ ./run.sh SK0867 1
```
