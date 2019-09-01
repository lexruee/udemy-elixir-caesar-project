defmodule Caesar.Cipher do
  @alphabet_size Application.get_env(:caesar, :alphabet_size)

  def encrypt(msg, shift) do
    msg
    |> to_charlist
    |> Enum.map(&shift_char(&1, shift))
    |> List.to_string
  end

  defp shift_char(char, shift) do
    case char do
      chr when chr in (?a..?z) -> calculate_mapping(?a, chr, shift)
      chr when chr in (?A..?Z) -> calculate_mapping(?A, chr, shift)
      chr -> chr
    end
  end

  def calculate_mapping(base_letter, char, shift) do
    normalize = &(&1 - @alphabet_size)
    shift_num = rem(shift, @alphabet_size)
    base_letter + rem(char - normalize.(base_letter) - shift_num, @alphabet_size)
  end
end
