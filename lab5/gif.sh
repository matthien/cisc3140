#Matthew Thien ImageMagick Script
#Converts the three png images to a gif 
# -delay 100 means 1 second delay between images
# -loop 0 means loop infinitely 
# Uses all .png files in images folder 
# animation.gif is the output file
convert -delay 100 -loop 0 ./images/*.png animation.gif
