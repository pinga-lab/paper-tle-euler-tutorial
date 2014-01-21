Avoiding common pitfalls in Euler deconvolution of potential field data
=======================================================================

### Leonardo Uieda, Vanderlei C. Oliveira Jr., and Valéria C. F. Barbosa

*Leonardo Uieda ([leouieda@gmail.com](mailto:leouieda@gmail.com)),
Observatório Nacional, Rio de Janeiro, RJ, Brazil*

*Vanderlei C. Oliveira Jr.,
Observatório Nacional, Rio de Janeiro, RJ, Brazil*

*Valéria C. F. Barbosa,
Observatório Nacional, Rio de Janeiro, RJ, Brazil*

----

Euler deconvolution bla bla bla @Thompson1982 and @Reid1990.

Mathematical formulation
------------------------

Euler's equation,

\begin{equation}
(x_i - x_0)\dfrac{\partial f_i}{\partial x} +
 (y_i - y_0)\dfrac{\partial f_i}{\partial y} +
 (z_i - z_0)\dfrac{\partial f_i}{\partial z} =
 \eta (b - f_i).
\label{euler}
\end{equation}

Example
-------

Figure \ref{fig:data-model} was generated from \ref{euler}.

![Polygonal prism model (a) and synthetic total field anomaly data (b).
\label{fig:data-model}](
fig/data-model.png)


Figure \ref{fig:solutions} was generated from \ref{euler}.

![Euler deconvolution solutions for varying structural index (SI) and moving
window size. \label{fig:solutions}](
fig/euler-solutions.png)

![Euler deconvolution solutions for a moving window of 3 km and structural
index 3. \label{fig:solutions-3d}](
fig/euler-solutions-3d-composite.png)

Acknowledgments
---------------

Meh


References
----------


