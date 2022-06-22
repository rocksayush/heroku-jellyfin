FROM jellyfin/jellyfin

WORKDIR /jellyfin

RUN apt update && apt upgrade -y \
    && apt install -y wget 
    
RUN wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz \
	&& tar xvzf ngrok-v3-stable-linux-amd64.tgz
	
RUN ./ngrok config add-authtoken 2AmrYi99KvXhV3097FGRcelOOV6_4mNRVw2X3WNXDCrtmUPbW 
	

ENTRYPOINT [""]
