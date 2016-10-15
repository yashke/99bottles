class Bottles
  TEMPLATE = "%{number} bottles of beer on the wall, %{number} bottles of beer.\nTake one down and pass it around, %{lower_number} bottles of beer on the wall.\n"

  def verse(number)
    TEMPLATE % {
      number: number,
      lower_number: number - 1
    }
  end
end
