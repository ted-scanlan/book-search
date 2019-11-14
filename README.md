
## Reading List Application ##

This is a simple command line application built using Ruby, RSpec and Webmock. It uses the Google Books API.


### My Approach ###

I used Ruby because I think its a great language for command line applications and using Object Oriented principles seemed like the most practical way of making a program that handled books and lists etc.  

In terms of edge cases, if a search terms brings back no results, an error notifies the user and gives them the option to search again.  Missing information that comes back (quite common for publishing company) is displayed in the results as “info currently unavailable”.

For testing, I used Webmock to stub out the API call in the spec_helper file. When running tests, every time an api call is made the object in the spec helper file is instead called. This caused some issues as it wouldn’t allow me to simulate an unparsed JSON object. So I had to use an array as the mock response and then implement an if else statement in the api module that checks to see what kind of object the response is. Therefore the method interacts with the response differently depending on if its a test or the live program.

If I had a bit more time, there are a few minor edge cases to do with the navigation of the application that need to be corrected. I would also possibly create a ‘results’ class, just so there is a bit less functionality in the book search class.


### Set-Up ###

Clone this repository.

```
cd book-search
bundle install
```

Then go to the Google cloud platform, and acquire an api key (this may involve signing up if you have not already done so). And then in the root directory do the following:

```
touch '.env'
echo "export API_KEY = <YOUR_API_KEY>" >> '.env'
```

to run program:

```
ruby app.rb
```

to run tests:

```
rspec
```
