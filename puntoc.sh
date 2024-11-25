sudo systemctl enable --now docker
git clone https://github.com/upszot/UTN-FRA_SO_Docker.git
cd UTN-FRA_SO_Docker/ejemplo0
sudo systemctl stop apache2
docker run -d -p 80:80 kennethreitz/httpbin
docker login -u jazgarlan
docker build -t jazgarlan/2parcial-ayso:v1.0 .
sudo mkdir /appHomeBanking
sudo nano index.html
sudo nano contacto.html
docker run -d -p 80:80 -v $(pwd)/appHomeBanking:/usr/share/nginx/html nginx
docker push jazgarlan/2parcial-ayso:v1.0
docker run -d -p 80:80 jazgarlan/2parcial-ayso
