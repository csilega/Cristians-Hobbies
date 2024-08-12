import os
import boto3

#instantiate client
client = boto3.client('s3')

#set variables
bucket = 'cristiansilegas-new-s3-bucket'
cur_path = os.getcwd()
file = 'profile_007.csv'
filename = os.path.join(cur_path, 'images', file)

#open the file
images = open(filename, 'rb')

# load data into s3
client.upload_file(filename, bucket, file)
