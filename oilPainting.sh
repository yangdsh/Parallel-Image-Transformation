wget "https://cdn3.tropicalsky.co.uk/images/800x600/lake-kawaguchiko-autumn.jpg" -O image/upload.jpg
python script/jpg2bmp.py
./release/kmeans_cuda image/input.bmp image/kmeans.bmp 100
./release/colorBlock_omp image/kmeans.bmp image/result.bmp 10 3
python script/bmp2jpg.py
