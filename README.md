# SFCRoom

SFCRoom is a parser for clasrooms of Keio University Shonan Fujisawa Campus.

## Installation

Add this line to your application's Gemfile:

    gem 'sfc-room'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sfc-room

## Usage

    require 'sfc-room'

    room = SFCRoom.parse('イオタ411')
    # Try with "i411","Ι411",...
    # You can use also familliar names such as "サブウェイ","本館","情報基盤センター",...

    room.to_greek #=> 'ι411'
    room.to_japanese #=> 'イオタ411'
    room.to_roman #=> 'i411'


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
