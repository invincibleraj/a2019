import boto3
import json
import sys
import pyperclip


comprehend = boto3.client(service_name='comprehend', region_name='us-west-2')

def sentimentFinder(sentence):
	output = json.dumps(comprehend.detect_sentiment(Text=sentence, LanguageCode='en'), sort_keys=True, indent=4)
	resp = json.loads(output)
	sentiment = resp['Sentiment']
	return sentiment
	


	