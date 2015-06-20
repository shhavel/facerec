# facerec

A simple face recognition command line application using Python and OpenCV.

## Installation

Installation in OS X:

    $ curl https://raw.githubusercontent.com/shhavel/facerec/master/facerec>/usr/local/bin/facerec;chmod +x /usr/local/bin/facerec
    $ brew tap homebrew/science;brew install opencv
    $ pip install numpy; pip install pillow
    $ sed -i '' s,/usr/share/opencv/haarcascades/haarcascade_frontalface_alt2.xml,/usr/local/opt/opencv/share/OpenCV/haarcascades/haarcascade_frontalface_alt2.xml, /usr/local/bin/facerec
    $ export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

## Usage

Enroll a new subject or update images of existing subject.
Requires subject code (name or identifier) and paths to image files.

    $ facerec enroll --subject "Dougal Mcguire" test/photos/dougal1.jpg test/photos/dougal2.jpg
    $ facerec enroll --subject "Ted Crilly" test/photos/ted1.gif test/photos/ted2.jpg

Get the identification of a subject given one image of him.
Returns subject code and confidence.

    $ facerec identify path/to/photo.jpg

Get the codes of all enrolled subjects.

    $ facerec list

Show faces of all enrolled subjects.

    $ facerec showall --timeout 1

Show face of one enrolled subject.

    $ facerec show --subject "Dougal Mcguire" --timeout 1

Check if the subject with given code is entered.

    $ facerec check --subject "Dougal Mcguire"

Request to delete a subject by subject code.

    $ facerec delete --subject "Dougal Mcguire"

## Lisks

General infotmation about OpenCV

- http://www.objc.io/issues/21-camera-and-photos/face-recognition-with-opencv/
- http://docs.opencv.org/2.4/modules/contrib/doc/facerec/index.html
- http://docs.opencv.org/2.4/modules/objdetect/doc/cascade_classification.html

Face detection and face recognition using OpenCV and Python

- http://superuser.com/questions/420885/is-there-a-face-recognition-command-line-tool/794147#794147
- https://github.com/wavexx/facedetect](https://github.com/wavexx/facedetect
- http://www.mobileway.net/2015/02/14/install-opencv-for-python-on-mac-os-x/
- https://www.google.com.ua/#q=opencv-python+cv2+face+comparison
- http://opencv-python-tutroals.readthedocs.org/en/latest/py_tutorials/py_imgproc/py_template_matching/py_template_matching.html
- http://hanzratech.in/2015/02/03/face-recognition-using-opencv.html
- https://realpython.com/blog/python/face-recognition-with-python/
- https://realpython.com/blog/python/face-detection-in-python-using-a-webcam/
