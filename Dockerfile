FROM cloudlens/dnx:1.0.0-beta8

EXPOSE 5000  
ENTRYPOINT ["dnx", "-p", "project.json", "web"]

CD src/IndianCreek/
COPY project.json /app/  
WORKDIR /app  
RUN ["dnu", "restore"]  
COPY . /app  