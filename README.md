# Nama Test

* Ruby version:  
ruby 2.7.2p137

* Configuration  
$ git clone https://github.com/pierry01/nama_test  
$ bundle  
$ rails db:create db:migrate  
$ rails s

* How to run the test suite  
$ rspec

* Services (job queues, cache servers, search engines, etc.)  
UploadDataJob: receives a TXT file, parse it and populate the database correctly  
You can run it with UploadDataJob.initialize(txt_file)  
