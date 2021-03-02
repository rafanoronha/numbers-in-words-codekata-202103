defmodule NumbersInWordsTest do
  use ExUnit.Case
  doctest NumbersInWords

  test "deve traduzir 0 para zero" do
    assert NumbersInWords.translate(0) == "zero"
  end

  test "deve traduzir um valor numérico de 0 até 10 para seu corrspondente por escrito" do
    assert NumbersInWords.translate(1) == "um"
  end

  test "não deve conseguir traduzir o valor numérico 3 para seu corrspondente por escrito" do
    assert NumbersInWords.translate(3) == "Valor não encontrado!"
  end

  test "deve traduzir corretamente valores entre 10 e 20" do
    assert NumbersInWords.translate(10) == "dez"
    assert NumbersInWords.translate(11) == "onze"
    assert NumbersInWords.translate(12) == "doze"
    assert NumbersInWords.translate(13) == "treze"
    assert NumbersInWords.translate(14) == "quatorze"
    assert NumbersInWords.translate(15) == "quinze"
    assert NumbersInWords.translate(16) == "dezesseis"
    assert NumbersInWords.translate(17) == "dezessete"
    assert NumbersInWords.translate(18) == "dezoito"
    assert NumbersInWords.translate(19) == "dezenove"
    assert NumbersInWords.translate(20) == "vinte"
  end

  test "deve traduzir 96 para noventa e seis" do
    assert NumbersInWords.translate(96) == "noventa e seis"
  end
end
