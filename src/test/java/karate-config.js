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
  karate.configure('connectTimeout',5000)
  karate.configure('readTimeout',5000)
  return config;
}