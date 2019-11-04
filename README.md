
## Set-Up ##

```
cd book-search
bundle install
```

Then go to the Google cloud platform, and acquire an api key (this may involve signing up if you have not already done so). And then in the root directory do the following:

```
touch 'api_key.rb'
echo "API_KEY = 'YOUR_API_KEY'" >> 'api_key.rb'
```

to run program:

```
ruby app.rb
```

to run tests:

```
rspec
```
