String globalBaseUrl = "https://211.253.29.154";
Duration globalTimeout = const Duration(seconds: 30);
//Map<String, String> globalHeaders = {'host':'api.longtail.kt.com', 'apiKey':'mA7LQneJG1uqPEJpyf4ldxoVnNpdeA2C'};
//CO0000103 : KzQ5zwmgtJpHH12wH0vK1D8oK7jlw7yN,  CO0000110 : rIGHufpYJOvmLleQpO5umFddc3wprMs1, CO0000133: IoFUjx3HXmeQbq7EGV47osqwaki7kHJ8
//
Map<String, String> globalHeaders = {'host':'api.longtail.kt.com', 'apiKey':'IoFUjx3HXmeQbq7EGV47osqwaki7kHJ8'};

void setGlobalHeaders(Map<String, String> map) => globalHeaders = map;