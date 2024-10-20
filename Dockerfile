# Dockerfile para Vue.js
FROM node:16

# Crear y establecer el directorio de trabajo
WORKDIR /app

# Copiar el package.json y package-lock.json desde la carpeta example-app
COPY example-app/package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto de los archivos de la aplicación
COPY example-app/ . 

# Exponer el puerto por defecto
EXPOSE 8080

# Comando por defecto para iniciar la aplicación
CMD ["npm", "run", "serve"]