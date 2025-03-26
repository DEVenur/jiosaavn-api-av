# Use a imagem oficial do Node.js como base
FROM node:16-alpine

# Crie e defina o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copie os arquivos de pacotes do projeto para o contêiner
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install --frozen-lockfile

# Copie todos os arquivos do projeto para o contêiner
COPY . .

# Exponha a porta que o servidor irá usar (modifique se necessário)
EXPOSE 8080

# Defina a variável de ambiente NODE_ENV como production, caso necessário
ENV NODE_ENV=production

# Comando para iniciar o servidor
CMD ["npm", "run", "dev"]
