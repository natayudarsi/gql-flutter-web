const bool isProduction = bool.fromEnvironment('dart.vm.product');
const devConfig = {
  'baseUrl': 'https://rom4qjtali.execute-api.ap-southeast-1.amazonaws.com/dev',
  'graphqlBaseUrl': 'https://rom4qjtali.execute-api.ap-southeast-1.amazonaws.com/dev'
  
};
const prodConfig = {
  'baseUrl': 'http://localhost/api',
};
final environment = isProduction ? prodConfig : devConfig;