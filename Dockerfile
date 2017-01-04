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
COPY python-req.txt /opt/example/
RUN pip install -r python-req.txt

# Copy Flask App
COPY app.py /opt/example/app/

# Export Flask port
EXPOSE 5000

# Run Example App
ENTRYPOINT["python"]
CMD ["app/app.py"]