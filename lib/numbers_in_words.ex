defmodule NumbersInWords do
  @units %{
    0 => "zero",
    1 => "um",
    6 => "seis",
    10 => "dez",
    11 => "onze",
    12 => "doze",
    13 => "treze",
    14 => "quatorze",
    15 => "quinze",
    16 => "dezesseis",
    17 => "dezessete",
    18 => "dezoito",
    19 => "dezenove",
    20 => "vinte"
  }

  @dezenas %{
    10 => "dez",
    20 => "vinte",
    30 => "trinta",
    40 => "quarenta",
    50 => "cinquenta",
    60 => "sessenta",
    70 => "setenta",
    80 => "oitenta",
    90 => "noventa"
  }

  def translate(number) do
    number
    |> do_translate()
    |> handler()
  end

  defp do_translate(number) when number < 10 do
    @units[number]
  end
  defp do_translate(number) when number >= 10 and number <= 99 do
    list =
      number
      |> Integer.to_string()
      |> String.split("", trim: true)
      |> IO.inspect()

    unit = String.to_integer(list[1])
    dezena = String.to_integer(list[0]) <> "0"
    @dezenas[dezena] <> " e " <> @units[unit]
  end

  defp handler(nil), do: "Valor não encontrado!"
  defp handler(number), do: number
end
