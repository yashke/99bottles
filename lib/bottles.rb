class Bottles
  TEMPLATE = "%{more_bottles} of beer on the wall, %{more_bottles} of beer.\nTake one down and pass it around, %{less_bottles} of beer on the wall.\n"
  PLURAL_BOTTLE = "%d bottles"
  SINGULAR_BOTTLE = "1 bottle"

  def verse(number)
    TEMPLATE % {
      more_bottles: bottle_form(number),
      less_bottles: bottle_form(number - 1)
    }
  end

  private
  def bottle_form(number)
    if number > 1
      PLURAL_BOTTLE % [number]
    else
      SINGULAR_BOTTLE
    end
  end
end
