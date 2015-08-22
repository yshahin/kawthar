defmodule KausarTest do
  use ExUnit.Case

  setup do
    Kausar.start
  end

  test "param conversion to query string" do
    assert Kausar.to_querystring([url: "a", apikey: "b"]) == "url=a&apikey=b"
    assert Kausar.to_querystring([]) == ""
  end

  test "TextExtraction URLGetText api call" do
    {:ok, response} = Kausar.TextExtraction.url_get_text("http://en.wikipedia.org/wiki/Hauzu%27l-Kausar")
    assert response[:status] == "OK"
    assert String.contains?(response[:text], "In Islamic context, the Hauzuʾl-Kausar is the lake or fountain of abundance in Jannah (paradise).")
  end
end
