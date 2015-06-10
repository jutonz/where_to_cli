# whereto
[![Build Status](https://travis-ci.org/jutonz/where_to_cli.svg?branch=master)](https://travis-ci.org/jutonz/where_to_cli)

Whereto helps you take control of your media library by providing a wizard-style interface for organizing, naming, and applying metadata to your media files.  

Here's an example:  

```
$ cd 'videos/great show'
$ whereto organize .

I found the following files:
great show - pilot.mkv
great.show.ep2.mkv
Great Show: 3.mkv

For the file great show - pilot.mkv
Enter a series title: great show 
Enter a season number (or press enter for 1): 
Enter an episode number (or press enter for 1):
Enter an episode title (or press enter for Pilot): 
Renaming...success!
New file: great.show.E01S01.pilot.mkv

... 
```
## Installation

Installation is pretty easy. Just type `gem install where_to_cli`

Whereto gets episode information from the tvdb database. For this functionality to work, you need to  
`export TVDB_API_KEY='my_super_secret_api_key'` susbtituting of course your [tvdb](thetvdb.com) api key. 
