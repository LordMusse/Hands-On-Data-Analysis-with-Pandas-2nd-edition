FROM python:3.8

COPY requirements.txt ./

COPY visual-aids ./visual-aids

RUN pip3 install --no-cache-dir --upgrade pip

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

RUN useradd -ms /bin/bash jupyter

USER jupyter

WORKDIR /home/jupyter

ENTRYPOINT ["jupyter","lab","--ip=*"]
