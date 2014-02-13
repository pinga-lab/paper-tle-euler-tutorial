# Euler deconvolution of potential field data

Leonardo Uieda, Vanderlei C. Oliveira Jr., and Valéria C. F. Barbosa

This is a tutorial submitted to
[The Leading Edge](http://library.seg.org/journal/tle).

Results were generated using the open-source Python package
[Fatiando a Terra](http://fatiando.org) version 0.2.

The IPython notebooks and data files are also on figshare at
[dx.doi.org/10.6084/m9.figshare.923450](http://dx.doi.org/10.6084/m9.figshare.923450)

## Reading the tutorial

For now, you can read
a [pre-print of the tutorial](https://github.com/pinga-lab/paper-tle-euler-tutorial/blob/master/manuscript.pdf?raw=true)
(`manuscript.pdf`).
I'll put up a link to the finished version when it comes out
(probably in the April edition).

## Synthetic data and model

Examples in the tutorial use
synthetic data generated with the IPython notebook
[create_synthetic_data.ipynb](
http://nbviewer.ipython.org/github/pinga-lab/paper-tle-euler-tutorial/blob/master/create_synthetic_data.ipynb).
The data can be found in the `data` directory of this repository.
File `synthetic_data.txt` has 4 columns: x (north), y (east), z (down) and
the total field magnetic anomaly. x, y, and z are in meters. The total field
anomaly is in nanoTesla (nT).
File `metadata.json` contains extra information about the data,
such as inclination and declination of the inducing field (in degrees),
shape of the data grid (number of points in y and x, respectively),
the area containing the data (W, E, S, N, in meters),
and the model boundaries (W, E, S, N, top, bottom, in meters):

    {"shape": [100, 100],
     "dec": 30,
     "inc": -15,
     "bounds": [0, 30000, 0, 30000, 0, 5000],
     "area": [5000, 25000, 5000, 25000]}

File `model.pickle` is a serialized version of the model used to generate the
data.
It contains a list of instances of the [PolygonalPrism](
http://fatiando.readthedocs.org/en/v0.2/api/mesher.html#fatiando.mesher.PolygonalPrism)
class of Fatiando.
To load this module in a Python session, run:

    import cPickle as pickle
    with open('model.pickle') as f:
        model = pickle.load(f)


## Reproducing the results

The notebook
[euler-deconvolution-examples.ipynb](
http://nbviewer.ipython.org/github/pinga-lab/paper-tle-euler-tutorial/blob/master/euler-deconvolution-examples.ipynb)
runs the Euler deconvolution on the synthetic data
and generates the figures for the manuscript.
Also presents a more detailed explanation of the method
and more tests than went into the finished manuscript.

## Compiling the manuscript

The text (`manuscript.md`)
is written using Markdown
and compiled to PDF and Microsoft Word (doc) formats
using [pandoc](http://johnmacfarlane.net/pandoc/index.html).
To produce the PDF, run:

    make pdf

and to produce doc:

    make doc

## License

<a rel="license"
href="http://creativecommons.org/licenses/by/4.0/deed.en_US"><img alt="Creative
Commons License" style="border-width:0"
src="http://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is
licensed under a <a rel="license"
href="http://creativecommons.org/licenses/by/4.0/deed.en_US">Creative Commons
Attribution 4.0 International License</a>.
