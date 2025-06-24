function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    urltoken:'https://api.petfinder.com/v2/oauth2/token',
    urlpetfinder:'https://api.petfinder.com',
    pathanimals:'/v2/animals',
    pathtypes:'/v2/types',
    pathbreeds:'/v2/types/dog/breeds'
  }
  if (env == 'dev') {
    // This will work in a case we need to run on dev
  } else if (env == 'qa')
  {
    // This will work in a case we need to run on dev
  }
  // Just increased the timeout for the api, as some of them go beyond 5000 ms the standard time
  karate.configure('connectTimeout',50000)
  karate.configure('readTimeout',50000)
  return config;
}