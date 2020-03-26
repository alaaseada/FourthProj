FROM python:3.7.3-stretch

# working directory

WORKDIR /app



# Copy source code to working directory

copy . app.py /app/



# install packages from requirements.txt file

	RUN pip install --upgrade pip 

	RUN pip install --trusted-host pypi.python.org -r requirements.txt


#hadolint ignore=DL3013

# Expose port 80

EXPOSE 80


# Run app.py at container launch

CMD ["python", "app.py"]

