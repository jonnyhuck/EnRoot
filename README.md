# minirhizotron-transform

This repo is used to transform images from a **minirhizotron** for areal calculations.

It relies upon the [points2gcp](https://github.com/jonnyhuck/points2gcp) script (which is bundled in this repo), and upon the excellent [GDAL](https://www.gdal.org/).

To set it up, you need to define the ground control points for your transform. To do this, simply photograph a grid wrapped around the minirhizotron and load into the **QGIS Georeferencing** tool. Add a **Ground Control Point** at each intersection using a defined grid interval (e.g. 100px) and export the resulting GCPs as `pointsfile.points`.

Then, put the images that you would like to transform (jpg format) into the root directory of the repo and run `bash warp.sh`. This will output the reansformed images into the `out/` directory.

### Example 1: Using a Calibration Grid

#### Before:
![before-grid](Snap_0001.jpg)
#### After
![after-grid](Snap_0001_transformed.jpg)

### Example 2: Using Real Data

#### Before:
![before-grid](Snap_003.jpg)
#### After
![after-grid](Snap_003_transformed.jpg)

### References

You can read more about the use of a **minirhizotron** in [Arnaud, M., Baird, A.J., Morris, P.J. et al. (2019) EnRoot: a narrow-diameter, inexpensive and partially 3D-printable minirhizotron for imaging fine root production. Plant Methods 15, 101 ](https://doi.org/10.1186/s13007-019-0489-6). Please reference this publication you make use of this software.