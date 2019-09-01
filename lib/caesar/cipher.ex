defmodule Caesar.Cipher do
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
    normalize = &(&1 - 26)
    shift_num = rem(shift, 26)
    base_letter + rem(char - normalize.(base_letter) - shift_num, 26)
  end
end
