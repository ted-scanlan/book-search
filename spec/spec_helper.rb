require 'simplecov'
SimpleCov.start

require 'webmock/rspec'


# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# The generated `.rspec` file contains `--require spec_helper` which will cause
# this file to always be loaded, without a need to explicitly require it in any
# files.
#
# Given that it is always loaded, you are encouraged to keep this file as
# light-weight as possible. Requiring heavyweight dependencies from this file
# will add to the boot time of your test suite on EVERY test run, even for an
# individual file that may not need all of that loaded. Instead, consider making
# a separate helper file that requires the additional dependencies and performs
# the additional setup, and require it from the spec files that actually need
# it.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|


  config.before(:each) do
 stub_request(:get, /www.googleapis.com/).
 to_return(status: 200, body:[{"kind"=>"books#volume", "id"=>"tl7CAgAAQBAJ", "etag"=>"1wWxQd8f9hM", "selfLink"=>"https://www.googleapis.com/books/v1/volumes/tl7CAgAAQBAJ", "volumeInfo"=>{"title"=>"Chinese Flower Arrangement", "authors"=>["H. L. Li"], "publisher"=>"Courier Corporation", "publishedDate"=>"2012-10-09", "description"=>"Illustrated history of Chinese floral art provides practical suggestions for applying traditional methods to modern settings, including selecting flowers for symbolic qualities and beauty. Forty-two illustrations span centuries of Chinese paintings, prints, tapestries, and porcelains.", "industryIdentifiers"=>[{"type"=>"ISBN_13", "identifier"=>"9780486169026"}, {"type"=>"ISBN_10", "identifier"=>"0486169022"}], "readingModes"=>{"text"=>true, "image"=>true}, "pageCount"=>144, "printType"=>"BOOK", "categories"=>["Crafts & Hobbies"], "maturityRating"=>"NOT_MATURE", "allowAnonLogging"=>false, "contentVersion"=>"3.14.12.0.preview.3", "panelizationSummary"=>{"containsEpubBubbles"=>false, "containsImageBubbles"=>false}, "imageLinks"=>{"smallThumbnail"=>"http://books.google.com/books/content?id=tl7CAgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", "thumbnail"=>"http://books.google.com/books/content?id=tl7CAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}, "language"=>"en", "previewLink"=>"http://books.google.co.uk/books?id=tl7CAgAAQBAJ&printsec=frontcover&dq=intitle:flower&hl=&cd=1&source=gbs_api", "infoLink"=>"https://play.google.com/store/books/details?id=tl7CAgAAQBAJ&source=gbs_api", "canonicalVolumeLink"=>"https://play.google.com/store/books/details?id=tl7CAgAAQBAJ"}, "saleInfo"=>{"country"=>"GB", "saleability"=>"FOR_SALE", "isEbook"=>true, "listPrice"=>{"amount"=>7.79, "currencyCode"=>"GBP"}, "retailPrice"=>{"amount"=>4.91, "currencyCode"=>"GBP"}, "buyLink"=>"https://play.google.com/store/books/details?id=tl7CAgAAQBAJ&rdid=book-tl7CAgAAQBAJ&rdot=1&source=gbs_api", "offers"=>[{"finskyOfferType"=>1, "listPrice"=>{"amountInMicros"=>7790000.0, "currencyCode"=>"GBP"}, "retailPrice"=>{"amountInMicros"=>4910000.0, "currencyCode"=>"GBP"}, "giftable"=>true}]}, "accessInfo"=>{"country"=>"GB", "viewability"=>"PARTIAL", "embeddable"=>true, "publicDomain"=>false, "textToSpeechPermission"=>"ALLOWED", "epub"=>{"isAvailable"=>true, "acsTokenLink"=>"http://books.google.co.uk/books/download/Chinese_Flower_Arrangement-sample-epub.acsm?id=tl7CAgAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"}, "pdf"=>{"isAvailable"=>true, "acsTokenLink"=>"http://books.google.co.uk/books/download/Chinese_Flower_Arrangement-sample-pdf.acsm?id=tl7CAgAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"}, "webReaderLink"=>"http://play.google.com/books/reader?id=tl7CAgAAQBAJ&hl=&printsec=frontcover&source=gbs_api", "accessViewStatus"=>"SAMPLE", "quoteSharingAllowed"=>false}, "searchInfo"=>{"textSnippet"=>"Illustrated history of Chinese floral art provides practical suggestions for applying traditional methods to modern settings, including selecting flowers for symbolic qualities and beauty."}}, {"kind"=>"books#volume", "id"=>"4U0CAAAAYAAJ", "etag"=>"PTk4YT9Vze8", "selfLink"=>"https://www.googleapis.com/books/v1/volumes/4U0CAAAAYAAJ", "volumeInfo"=>{"title"=>"Curtis's Botanical Magazine, Or, Flower-garden Displayed", "subtitle"=>"In which the Most Ornamental Foreign Plants, Cultivated in the Open Ground, the Green-house, and the Stove, are Accurately Represented in Their Natural Colours ...", "authors"=>["John Sims"], "publishedDate"=>"1816", "industryIdentifiers"=>[{"type"=>"OTHER", "identifier"=>"HARVARD:32044103104006"}], "readingModes"=>{"text"=>false, "image"=>true}, "printType"=>"BOOK", "categories"=>["Botany"], "maturityRating"=>"NOT_MATURE", "allowAnonLogging"=>false, "contentVersion"=>"0.2.2.0.full.1", "panelizationSummary"=>{"containsEpubBubbles"=>false, "containsImageBubbles"=>false}, "imageLinks"=>{"smallThumbnail"=>"http://books.google.com/books/content?id=4U0CAAAAYAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", "thumbnail"=>"http://books.google.com/books/content?id=4U0CAAAAYAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}, "language"=>"en", "previewLink"=>"http://books.google.co.uk/books?id=4U0CAAAAYAAJ&printsec=frontcover&dq=intitle:flower&hl=&cd=2&source=gbs_api", "infoLink"=>"https://play.google.com/store/books/details?id=4U0CAAAAYAAJ&source=gbs_api", "canonicalVolumeLink"=>"https://play.google.com/store/books/details?id=4U0CAAAAYAAJ"}, "saleInfo"=>{"country"=>"GB", "saleability"=>"FREE", "isEbook"=>true, "buyLink"=>"https://play.google.com/store/books/details?id=4U0CAAAAYAAJ&rdid=book-4U0CAAAAYAAJ&rdot=1&source=gbs_api"}, "accessInfo"=>{"country"=>"GB", "viewability"=>"ALL_PAGES", "embeddable"=>true, "publicDomain"=>true, "textToSpeechPermission"=>"ALLOWED", "epub"=>{"isAvailable"=>false}, "pdf"=>{"isAvailable"=>true, "downloadLink"=>"http://books.google.co.uk/books/download/Curtis_s_Botanical_Magazine_Or_Flower_ga.pdf?id=4U0CAAAAYAAJ&hl=&output=pdf&sig=ACfU3U0bRbdvUID8hxw_qeSMAZyiXQDZKg&source=gbs_api"}, "webReaderLink"=>"http://play.google.com/books/reader?id=4U0CAAAAYAAJ&hl=&printsec=frontcover&source=gbs_api", "accessViewStatus"=>"FULL_PUBLIC_DOMAIN", "quoteSharingAllowed"=>false}}, {"kind"=>"books#volume", "id"=>"YfBWdgKj7wUC", "etag"=>"PzPLygZD4Q8", "selfLink"=>"https://www.googleapis.com/books/v1/volumes/YfBWdgKj7wUC", "volumeInfo"=>{"title"=>"Name that Flower", "subtitle"=>"The Identification of Flowering Plants", "authors"=>["Ian Clarke", "Helen Lee"], "publisher"=>"Melbourne Univ. Publishing", "publishedDate"=>"2003", "description"=>"\"This concise guide to identifying flowering plants covers aesthetic and botanical information about flora from around the world. Presented are illustrations and explanations of reproductive parts, variations in floral structure, and nomenclature and plant families. The dissection process for flowers, techniques of flower arranging, and methods of observing structure for identification are clearly described. Plant families common to Australia are illustrated with examples of cultivated and wild", "industryIdentifiers"=>[{"type"=>"ISBN_10", "identifier"=>"052285060X"}, {"type"=>"ISBN_13", "identifier"=>"9780522850604"}], "readingModes"=>{"text"=>false, "image"=>true}, "pageCount"=>299, "printType"=>"BOOK", "categories"=>["Science"], "maturityRating"=>"NOT_MATURE", "allowAnonLogging"=>false, "contentVersion"=>"0.0.2.0.preview.1", "panelizationSummary"=>{"containsEpubBubbles"=>false, "containsImageBubbles"=>false}, "imageLinks"=>{"smallThumbnail"=>"http://books.google.com/books/content?id=YfBWdgKj7wUC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", "thumbnail"=>"http://books.google.com/books/content?id=YfBWdgKj7wUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}, "language"=>"en", "previewLink"=>"http://books.google.co.uk/books?id=YfBWdgKj7wUC&printsec=frontcover&dq=intitle:flower&hl=&cd=3&source=gbs_api", "infoLink"=>"http://books.google.co.uk/books?id=YfBWdgKj7wUC&dq=intitle:flower&hl=&source=gbs_api", "canonicalVolumeLink"=>"https://books.google.com/books/about/Name_that_Flower.html?hl=&id=YfBWdgKj7wUC"}, "saleInfo"=>{"country"=>"GB", "saleability"=>"NOT_FOR_SALE", "isEbook"=>false}, "accessInfo"=>{"country"=>"GB", "viewability"=>"PARTIAL", "embeddable"=>true, "publicDomain"=>false, "textToSpeechPermission"=>"ALLOWED", "epub"=>{"isAvailable"=>false}, "pdf"=>{"isAvailable"=>false}, "webReaderLink"=>"http://play.google.com/books/reader?id=YfBWdgKj7wUC&hl=&printsec=frontcover&source=gbs_api", "accessViewStatus"=>"SAMPLE", "quoteSharingAllowed"=>false}, "searchInfo"=>{"textSnippet"=>"&quot;This concise guide to identifying flowering plants covers aesthetic and botanical information about flora from around the world."}}, {"kind"=>"books#volume", "id"=>"siIkZNWBiQ8C", "etag"=>"yIZZVxV4xjM", "selfLink"=>"https://www.googleapis.com/books/v1/volumes/siIkZNWBiQ8C", "volumeInfo"=>{"title"=>"Flower Arrangement", "subtitle"=>"61 Creative Ways", "authors"=>["Ranjana Tulsyan"], "publisher"=>"Sterling Publishers Pvt. Ltd", "publishedDate"=>"2009-11-01", "description"=>"A beautiful arrangement rejuvenates the heart and brings about a transformation in the home. It occupies very little space and wins appreciation of all. With this book harness the skill of free style ikebana and novel flower arranging. Special sections on permanent and florist's flowers have been included. There are numerous innovative ideas, which have been combined interestingly. All the designs are illustrated by a photograph and step-by-step instructions to follow. Common varieties of flowers and foliage are used as they are popularly grown in almost every home garden. The idea is to create an exquisite display by using only a few flowers and foliage. Practice ikebana as it is an involvement, almost meditative. Indeed, it is a diversion in solitude that relieves tension and is a delightful and rewarding experience.", "industryIdentifiers"=>[{"type"=>"ISBN_10", "identifier"=>"8120748395"}, {"type"=>"ISBN_13", "identifier"=>"9788120748392"}], "readingModes"=>{"text"=>false, "image"=>true}, "pageCount"=>95, "printType"=>"BOOK", "averageRating"=>5.0, "ratingsCount"=>3, "maturityRating"=>"NOT_MATURE", "allowAnonLogging"=>false, "contentVersion"=>"0.0.1.0.preview.1", "imageLinks"=>{"smallThumbnail"=>"http://books.google.com/books/content?id=siIkZNWBiQ8C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", "thumbnail"=>"http://books.google.com/books/content?id=siIkZNWBiQ8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}, "language"=>"en", "previewLink"=>"http://books.google.co.uk/books?id=siIkZNWBiQ8C&printsec=frontcover&dq=intitle:flower&hl=&cd=4&source=gbs_api", "infoLink"=>"http://books.google.co.uk/books?id=siIkZNWBiQ8C&dq=intitle:flower&hl=&source=gbs_api", "canonicalVolumeLink"=>"https://books.google.com/books/about/Flower_Arrangement.html?hl=&id=siIkZNWBiQ8C"}, "saleInfo"=>{"country"=>"GB", "saleability"=>"NOT_FOR_SALE", "isEbook"=>false}, "accessInfo"=>{"country"=>"GB", "viewability"=>"PARTIAL", "embeddable"=>true, "publicDomain"=>false, "textToSpeechPermission"=>"ALLOWED", "epub"=>{"isAvailable"=>false}, "pdf"=>{"isAvailable"=>false}, "webReaderLink"=>"http://play.google.com/books/reader?id=siIkZNWBiQ8C&hl=&printsec=frontcover&source=gbs_api", "accessViewStatus"=>"SAMPLE", "quoteSharingAllowed"=>false}, "searchInfo"=>{"textSnippet"=>"A beautiful arrangement rejuvenates the heart and brings about a transformation in the home. It occupies very little space and wins appreciation of all. With this book harness the skill of free style ikebana and novel flower arranging."}}, {"kind"=>"books#volume", "id"=>"yaxWAAAAcAAJ", "etag"=>"Z6gKjp8cN+A", "selfLink"=>"https://www.googleapis.com/books/v1/volumes/yaxWAAAAcAAJ", "volumeInfo"=>{"title"=>"The Florist's Manual, Or, Hints for the Construction of a ... Flower-garden ... A New Edition. Illustrated with Coloured Plates", "authors"=>["Maria Elizabeth JACKSON"], "publishedDate"=>"1827", "industryIdentifiers"=>[{"type"=>"OTHER", "identifier"=>"BL:A0017592535"}], "readingModes"=>{"text"=>false, "image"=>true}, "printType"=>"BOOK", "maturityRating"=>"NOT_MATURE", "allowAnonLogging"=>false, "contentVersion"=>"full-1.0.0", "imageLinks"=>{"smallThumbnail"=>"http://books.google.com/books/content?id=yaxWAAAAcAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", "thumbnail"=>"http://books.google.com/books/content?id=yaxWAAAAcAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}, "language"=>"en", "previewLink"=>"http://books.google.co.uk/books?id=yaxWAAAAcAAJ&printsec=frontcover&dq=intitle:flower&hl=&cd=5&source=gbs_api", "infoLink"=>"https://play.google.com/store/books/details?id=yaxWAAAAcAAJ&source=gbs_api", "canonicalVolumeLink"=>"https://play.google.com/store/books/details?id=yaxWAAAAcAAJ"}, "saleInfo"=>{"country"=>"GB", "saleability"=>"FREE", "isEbook"=>true, "buyLink"=>"https://play.google.com/store/books/details?id=yaxWAAAAcAAJ&rdid=book-yaxWAAAAcAAJ&rdot=1&source=gbs_api"}, "accessInfo"=>{"country"=>"GB", "viewability"=>"ALL_PAGES", "embeddable"=>true, "publicDomain"=>true, "textToSpeechPermission"=>"ALLOWED", "epub"=>{"isAvailable"=>false}, "pdf"=>{"isAvailable"=>true, "downloadLink"=>"http://books.google.co.uk/books/download/The_Florist_s_Manual_Or_Hints_for_the_Co.pdf?id=yaxWAAAAcAAJ&hl=&output=pdf&sig=ACfU3U3Ru8wCkpHc-Yf14pO2eHwVQrFqaw&source=gbs_api"}, "webReaderLink"=>"http://play.google.com/books/reader?id=yaxWAAAAcAAJ&hl=&printsec=frontcover&source=gbs_api", "accessViewStatus"=>"FULL_PUBLIC_DOMAIN", "quoteSharingAllowed"=>false}}])
end

  # rspec-expectations config goes here. You can use an alternate
  # assertion/expectation library such as wrong or the stdlib/minitest
  # assertions if you prefer.
  config.expect_with :rspec do |expectations|
    # This option will default to `true` in RSpec 4. It makes the `description`
    # and `failure_message` of custom matchers include text for helper methods
    # defined using `chain`, e.g.:
    #     be_bigger_than(2).and_smaller_than(4).description
    #     # => "be bigger than 2 and smaller than 4"
    # ...rather than:
    #     # => "be bigger than 2"
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

  # This option will default to `:apply_to_host_groups` in RSpec 4 (and will
  # have no way to turn it off -- the option exists only for backwards
  # compatibility in RSpec 3). It causes shared context metadata to be
  # inherited by the metadata hash of host groups and examples, rather than
  # triggering implicit auto-inclusion in groups with matching metadata.
  config.shared_context_metadata_behavior = :apply_to_host_groups

# The settings below are suggested to provide a good initial experience
# with RSpec, but feel free to customize to your heart's content.
=begin
  # This allows you to limit a spec run to individual examples or groups
  # you care about by tagging them with `:focus` metadata. When nothing
  # is tagged with `:focus`, all examples get run. RSpec also provides
  # aliases for `it`, `describe`, and `context` that include `:focus`
  # metadata: `fit`, `fdescribe` and `fcontext`, respectively.
  config.filter_run_when_matching :focus

  # Allows RSpec to persist some state between runs in order to support
  # the `--only-failures` and `--next-failure` CLI options. We recommend
  # you configure your source control system to ignore this file.
  config.example_status_persistence_file_path = "spec/examples.txt"

  # Limits the available syntax to the non-monkey patched syntax that is
  # recommended. For more details, see:
  #   - http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/
  #   - http://www.teaisaweso.me/blog/2013/05/27/rspecs-new-message-expectation-syntax/
  #   - http://rspec.info/blog/2014/05/notable-changes-in-rspec-3/#zero-monkey-patching-mode
  config.disable_monkey_patching!

  # This setting enables warnings. It's recommended, but in some cases may
  # be too noisy due to issues in dependencies.
  config.warnings = true

  # Many RSpec users commonly either run the entire suite or an individual
  # file, and it's useful to allow more verbose output when running an
  # individual spec file.
  if config.files_to_run.one?
    # Use the documentation formatter for detailed output,
    # unless a formatter has already been configured
    # (e.g. via a command-line flag).
    config.default_formatter = "doc"
  end

  # Print the 10 slowest examples and example groups at the
  # end of the spec run, to help surface which specs are running
  # particularly slow.
  config.profile_examples = 10

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = :random

  # Seed global randomization in this process using the `--seed` CLI option.
  # Setting this allows you to use `--seed` to deterministically reproduce
  # test failures related to randomization by passing the same `--seed` value
  # as the one that triggered the failure.
  Kernel.srand config.seed
=end
end
