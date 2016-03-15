import requests, json, collections

# api adress
api_url = "http://private-a6e53-dpcs.apiary-mock.com"


class MyClient:
    service_url = api_url
    def do_get(self, suffix):
	    return requests.get(self.service_url + suffix).json()


client = MyClient()
# print(client.do_get("/vd1/crash-reports/1"))
service_url = api_url

def do_get(self, suffix):
    return requests.get(self.service_url + suffix).json()

data = {}
data['crash-reports'] = 'vd1/crash-reports/'
data['crash-groups'] = 'vd1/crash-groups/'
data['solutions'] = 'vd1/solutions/'
json_test = json.dumps(data)

client = MyClient()
json_from_api = client.do_get("/vd1/paths/")

json_test_object = json.loads(json_test)

assert json_test_object == json_from_api
