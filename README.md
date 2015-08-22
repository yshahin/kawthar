Kausar
======

an AlchemyAPI wrapper for Elixir

## Usage

> ##### Note
> alchemyapi requires the `ALCHEMYAPI_KEY` environment variable set to a
> valid API key associated with your ALCHEMYAPI account.

```elixir
iex> Kausar.start
{:ok, []}

iex> Kausar.apikey
"your_key"

iex> Kausar.TextExtraction.url_get_text("https://en.wikipedia.org/wiki/Hauzu%27l-Kausar")
{:ok,
 [status: "OK",
  text: "   This article does not cite any references or sources. Please help improve this article by adding citations to reliable sources. Unsourced material may be challenged and removed. (December 2014)  \nIn Islamic context, the Hauzuʾl-Kausar is the lake or fountain of abundance in Jannah (paradise). Persons having crossed the As-Sirāt arrive at this lake, from which one is expected drink to forget any bad experiences they may have had during their lives, before moving further into paradise.\nAs the term kausar only occurs once in the Qurʾan, its exact meaning is subject to different interpretations. It is also known as the lake of good the pond of Muhammad and the sacred fountain of heaven.\n This page was last modified on 9 December 2014, at 02:38.\n",
  url: "https://en.wikipedia.org/wiki/Hauzu%27l-Kausar"]}
```

## Reference

See [Alchemy's API docs](http://www.alchemyapi.com/api).

## Dependencies

- [HTTPoison](https://github.com/edgurgel/httpoison)
- [Poison](https://github.com/devinus/poison)

## Testing Dependencies
- [dotenv](https://github.com/avdi/dotenv_elixir)

## License

See [LICENSE](https://github.com/yshahin/kausar/blob/master/LICENSE)

