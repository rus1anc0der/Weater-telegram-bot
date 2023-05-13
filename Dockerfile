FROM python:slim
RUN pip install aiogram && pip install requests 
RUN apt update && apt install -y git
RUN git clone https://github.com/rus1anc0der/Weater-telegram-bot
RUN echo "git pull && python3 main.py" > start.sh
CMD [ "sh", "./start.sh" ]
