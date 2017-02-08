FROM centos:centos7
MAINTAINER Alex Guedes <alex.guedes@gmail.com>

# Update and install Python
RUN \
  yum update -y && \
  yum install -y epel-release && \
  yum install -y python python-pip python-setuptools && \
  yum clean all

# Create directories and setting the workdir
RUN mkdir -p /opt/example/app
WORKDIR /opt/example

# Install Python requirements
COPY requirements.txt /opt/example/
RUN pip install -r requirements.txt

# Copy Flask App
COPY app.py /opt/example/app/

# Run Example App
ENTRYPOINT ["python"]
CMD ["app/app.py"]