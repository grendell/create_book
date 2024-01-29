# Create Book
* Losslessly crops JPG images to a common height, strips metadata, and combines them losslessly into a simple PDF in lexicographic order.
## Dependencies (standing on the shoulders of giants)
* `sh`, `awk`, and `cut`
* [ImageMagick](https://imagemagick.org/index.php) `identify`
* [libjpeg](https://libjpeg.sourceforge.net/) `jpegtran`
* [exiftool](https://exiftool.org/)
* [img2pdf](https://gitlab.mister-muffin.de/josch/img2pdf)
## Usage
* `sh create_book.sh <image dir> <crop height>`
* example: `sh create_book.sh issue_1_of_4 3047`