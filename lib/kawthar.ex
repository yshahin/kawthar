defmodule Kawthar do
  use HTTPoison.Base

  @expected_fields ~w(status url text statusInfo)
  @base_url "http://access.alchemyapi.com"

  def apikey, do: System.get_env("ALCHEMYAPI_KEY")

  def request(url, params) do
    querystring = Kawthar.to_querystring(params)
    case Kawthar.get(url <> "?" <> querystring) do
      {:ok, response} -> {:ok, response.body}
      error -> error
    end
  end

  def to_querystring(params) do
    params
    |> Enum.map(fn {k, v} -> "#{k}=#{v}" end)
    |> Enum.join("&")
  end

  defp process_url(url) do
    URI.encode(@base_url <> url)
  end

  defp process_response_body(body) do
    body
    |> Poison.decode!
    |> Dict.take(@expected_fields)
    |> Enum.map(fn({k, v}) -> {String.to_atom(k), v} end)
  end
end
