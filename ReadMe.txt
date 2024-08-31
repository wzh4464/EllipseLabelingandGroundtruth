/*************************			Read me file			*******************************/
/ Copyright (C) 2010.
/ Nanyang Technological University, School of Computer Engineering. 
/ The file is distributed in the hope that it will be useful for your work, but WITHOUT ANY WARRANTY; 
/ without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
/
/This ellipse labeling tool was used to obtain human labeled ground truth for Real Image Experiment section 5.2 of Pattern recognition journal papers by Dilip K. Prasad, Maylor K.H. Leung and Siu-Yeung Cho, 
/“Edge curvature and convexity based ellipse detection method,”  Pattern Recognition (Elsevier), vol. 45, issue 9, pp. 3204-3221, 2012.
/ Please contact the following authors for bug fixes:
/ Dilip K. Prasad (dilipprasad@gmail.com)
/ List of 400 images (Caltech256 dataset) used for results generation for real images are listed in "List_of_400_Caltech256_Real_Images.txt" file.
/ Note(18-Mar-2013): Due to system crash only 199 files annotated ground truth is available others 201 files annotation is lost and I am sorry for not able to recover them and share with / / my fellow researchers. I am sharing the available 199 files ground truth data only for research use.
/******************************************************************************************************/

/*************************			Desription of files and folders			*******************************/
1. Main.m : start point to run ellipse labelling and view the results

2. Annotated_files folder: the annotated files contains the ground truth of real images

3. Images: the folder that contains the images for ellipse labelling used in the paper. (you may choose image from other folders as required)

/*************************			Example of use			*******************************/

1.	Run Matlab.

2.	Set current path (where main.p and ReadMe.txt files located) to the folder of this ReadMefile.

3.	Type 'Main' at command prompt.

4.	Press 'Browse' button on GUI to select an image for ellipse labelling.

5.      Click 'Help' button for how to label the image
/*******************************************************************************************/