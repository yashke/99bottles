class Bottles
  TEMPLATE = "%{more_bottles} of beer on the wall, %{more_bottles} of beer.\nTake %{taken} down and pass it around, %{less_bottles} of beer on the wall.\n"
  PLURAL_BOTTLE = "%d bottles"
  SINGULAR_BOTTLE = "1 bottle"
  ZERO_BOTTLE = "no more bottles"

  def verse(number)
    TEMPLATE % {
      more_bottles: bottle_form(number),
      less_bottles: bottle_form(number - 1),
      taken: taken_form(number)
    }
  end

  private
  def bottle_form(number)
    if number > 1
      PLURAL_BOTTLE % [number]
    elsif number == 1
      SINGULAR_BOTTLE
    else
      ZERO_BOTTLE
    end
  end

  def taken_form(number)
    if number > 1
      "one"
    else
      "it"
    end
  end
end
