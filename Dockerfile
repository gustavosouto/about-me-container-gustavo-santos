# Aplicação estática (HTML, CSS e JS): não precisa de runtime próprio,
# apenas de um servidor web para entregar os arquivos.
FROM nginx:1.30.4-alpine

# Remove o conteúdo padrão do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia somente os arquivos da aplicação. Copiar o diretório inteiro levaria
# também .git, .github, docs e o próprio Dockerfile para o servidor web.
COPY index.html about.html /usr/share/nginx/html/
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js

EXPOSE 80
