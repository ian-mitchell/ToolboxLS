# ToolboxLS

The Toolbox of Level Set Methods (ToolboxLS) is a collection of Matlab routines that implement numerical algorithms to approximate the solution of the time-dependent Hamilton-Jacobi (HJ) partial differential equation (PDE) in any number of dimensions.  The HJ PDE is often used for simulating dynamic implicit surfaces in animation and computational fluid dynamics (CFD), and it is of independent interest in areas of optimal control, differential games, robotics, financial mathematics, continuous reachability, etc.

To use ToolboxLS, you will need to run the basic version of Matlab. No additional toolboxes are required.  Version 1.1 of ToolboxLS definitely works with Matlab R2010b, but likely works for some older
releases.  If you want to run on very old releases of Matlab, you may need to remove certain recent language features by hand (eg: the `~` parameter, `&&` short-circuit boolean operator).

If you got these files from the ToolboxLS web page in zip archive, you can find the most recent version of ToolboxLS (including bug fixes) at the [ToolboxLS GitHub repository](https://github.com/ian-mitchell/ToolboxLS).

## Getting Started

Before using ToolboxLS, you will need to edit one configuration file as follows:

  1. Go into the `Examples/` subdirectory.  

  1. Open the file `addPathToKernel.m` in your favourite text editor.

  1. Modify the path contained there so that it contains the *absolute path* (starting from
root) of the `Kernel/` subdirectory of this distribution.  

  1. Save the modified file.

Once you have edited this file, you can try out ToolboxLS as follows.

  1. Start Matlab.
  
  1. Change to the `Examples/Basic/` directory
  
  1. Run the script `convectionDemo.m` (probably by typing `convectionDemo;` at the Matlab prompt).

If it generates a figure showing a circle moving to the right, you are on your way.

For more information and to get the 140 page, indexed user guide see

  http://www.cs.ubc.ca/~mitchell/ToolboxLS

Ian M. Mitchell \
August 2012 (posted Version 1.1) \
August 2026 (converted `README` into Markdown and moved codebase to `git` version control)
