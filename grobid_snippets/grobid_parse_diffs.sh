mkdir ICLR2019_xmls

for dir in `ls ICLR2019_pdfs/*`
do
  xml_dir=${dir/_pdfs/_xmls}
  mkdir $xml_dir
  java -Xmx4G -jar grobid-0.7.1/grobid-core/build/libs/grobid-core-0.7.1-onejar.jar \
    -gH grobid-0.7.1/grobid-home \
    -dIn $dir \
    -dOut $xml_dir/ \
    -exe processFullText 
done
