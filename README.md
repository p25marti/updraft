# 🍃 Updraft
This is my personal tool for organizing notes related to set releases for Magic: The Gathering.


# Rake Tasks

## Fetching Cards from Scryfall
We can download a JSON file from Scryfall containing all of the cards that have ever been released.
This bundle is updated frequently but we should be able to fetch it after each set release.
This is idempotent so it shouldn't break anything if you run it more than once.

```
bundle exec rake import:bulk_data
```


## Rails Models
![Ruby on Rails Models](/docs/images/erd.png)
