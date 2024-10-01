# Step 1: Use an official Node.js image as the base
FROM node:20

# Step 2: Set working directory in the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of your code to the container
COPY . .

# Step 6: Build the React app
RUN npm run build

# Step 7: Expose port 3000 (the default for React)
EXPOSE 3000

# Step 8: Start the app
CMD ["npm", "start"]