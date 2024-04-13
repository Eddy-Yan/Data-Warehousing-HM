import json

# Specify the path to your JASON configuration file
config_file_path='config.json'

#Load the JSON configuration file
with open(config_file_path, 'r') as config_file:
    config = json.load(config_file)
    
# Print the configuration
ConnectionSTRING = config["connectionString"]

print(ConnectionSTRING)