# lorem_ipsum

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

More on the history behind lorem ipsum can be found [here](http://lipsum.com/ "Lipsum.com").

Anywho, this plugin gives you dynamically generated lorem ipsum text right from your views. It really requires little explanation.

## Installation

Install the plugin as usual:

    script/plugin install git@github.com:chrisb/lorem_ipsum.git
    
Or, if you're on Rails 3:
  
    rails plugin install git@github.com:chrisb/lorem_ipsum.git

Restart your server and you're ready to start generating some lorem ipsum!

## How to Use

You now have the `lorem_ipsum` method at your disposal. It takes an options hash that includes any of the following keys: `sentences`, `paragraphs`, `words` (the `bytes` option is forthcoming). The key should map to the desired amount of text.

Take a look at this incredibly complex example:

    <%= lorem_ipsum :paragraphs => 8 %>
    
There is naturally a degree of variation in the length of each paragraph and sentence.

## The Future

Will add the `bytes` option and in addition allow for the configuration of sentence and words variation.

Copyright (c) 2010 Chris Bielinski <chris@shadowreactor.com>, released under the MIT license.