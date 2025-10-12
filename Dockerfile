FROM python:3.10-slim

MAINTAINER "Navanish Pandey"

WORKDIR /app

COPY ./test.py /app/

ENTRYPOINT ["python"]
CMD ["test.py"]
