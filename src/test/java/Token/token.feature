Feature: Token request

Scenario: Get authentication using OAuth 2.0 to obtain an access token
Given url urltoken
And form field grant_type = 'client_credentials'
And form field client_id = 'DPYfuxMaTUWllcdTFmmAYSwH0TykbYLIjEmJutZjF1YJJYRLtd'
And form field client_secret = 'oytmEZMMVBwmHGa5T35em0MFjh6A7FAsr52GcZ2u'
When method post
Then status 200
* def accessToken = response.access_token
* print ' Access Token:', accessToken