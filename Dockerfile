# Imagem oficial do Nginx, versão leve (Alpine)
FROM nginx:1.27-alpine

# Configuração do site
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Só os arquivos do site entram na imagem (a pasta .git fica de fora)
COPY index.html /usr/share/nginx/html/
COPY img/ /usr/share/nginx/html/img/
