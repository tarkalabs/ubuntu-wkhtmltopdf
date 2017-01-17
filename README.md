# ubuntu-wkhtmltopdf

## Usage:
```sh
docker run --rm -it \
  -v `pwd`:/data \
  vagmi/wkhtmltopdf:latest \
  wkhtmltopdf http://google.com - > /data/file.pdf
```
