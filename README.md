UConn_Beamer_Theme
==================
Author: Jonas Saggese Banhos <<jsbanhos@gmail.com>>

Theme and examples adapted from: Jeff Delmerico <<jad4@hawaii.edu>>

Previous reference, adapted from: Sascha Steinbiss <<steinbiss@zbh.uni-hamburg.de>> and LIM Lian Tze <<liantze@gmail.com>>, respectively.  

Theme for LaTeX Beamer presentations based on University UConn's logos and color scheme available at: https://brand.uconn.edu/wordmarks-assets/wordmark-and-logos/. 
It contains the theme files in the "theme" directory, and an example tex document and makefile in the "example" directory.

These instructions assume an Ubuntu system with an installation LaTeX with Beamer. Not sure if runs in other distributions 

Master slide "UConn-bg.pdf" color scheme
========================================
*It can be modified to fit your university's color scheme

*Top blue bar across slide: 960 x 80 px

*Bottom blue bar across slide: 960 x 40 px

*UConn's "word" logo at the top-right of page

*Note: You can use program "Inkscape" at <https://inkscape.org/> to modify your slide and save it as ".pdf"

Logo size
=========
Logo used is 125 x 125 px
Note: You can use program "Inkscape" at <https://inkscape.org/> to modify your logo

Installation Instructions
=========================
1. Download the repository to the desired location on your system:  
    	git clone https://github.com/JonasBanhos/UConn_Beamer_Theme.git
2. Edit the Makefile to adjust your install location (DEST_DIR) if necessary  
3. Run install (sudo is necessary to put it in your system tex directory):  
    	sudo make install
4. If you want to uninstall:  
    	sudo make uninstall

Usage Instructions
==================
1. Once the theme is installed, see example.tex for examples of the theme functionality, and use the included makefile (make && make read) in the example directory to see the output.  
2. We assume that you will use the \institute command for your email address:  
    	\institute{\url{https://cfd.engr.uconn.edu}}
3. You can then renew the \address command to set your own address or other title frame information (see example in example.tex)  
4. You can also change the image on the title frame of the template:  
    	\renewcommand{\titlepic}{some_other_title_frame_image}  
	It's currently limited to 5cm height, but you can edit the style file if you'd like to change the size.  

Please feel free to contact me regarding comments, suggestions, bug fixes, etc. 
