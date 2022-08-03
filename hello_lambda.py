import os


def lambda_handler(event, context):
    # return "{} from Lambda!".format(os.environ['greeting'])
    # return "{} from Lambda!" . key1
    return(event['key'])