import requests

def get_status_code():
    response = requests.get("https://github.com/psalaberria002/rules_python_gazelle_repro")
    return "Hello " + str(response.status_code)
