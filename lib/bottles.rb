class Bottles
  TEMPLATE = "%{more_bottles} of beer on the wall, %{more_bottles} of beer.\nTake %{taken} down and pass it around, %{less_bottles} of beer on the wall.\n"
  PLURAL_BOTTLE = "%s bottles"
  SINGULAR_BOTTLE = "1 bottle"

  def verse(number)
    more_bottles_number = human_number(number)
    less_bottles_number = human_number(number - 1)

    use_template(more_bottles_number, less_bottles_number)
  end

  private
  def use_template(more_bottles_number, less_bottles_number)
    TEMPLATE % {
      more_bottles: bottle_form(more_bottles_number),
      less_bottles: bottle_form(less_bottles_number),
      taken: taken_form(more_bottles_number)
    }
  end

  def bottle_form(number)
    if number != "1"
      PLURAL_BOTTLE % [number]
    else
      SINGULAR_BOTTLE
    end
  end

  def taken_form(number)
    if number != "1"
      "one"
    else
      "it"
    end
  end

  def human_number(number)
    if number == 0
      "no more"
    else
      "#{number}"
    end
  end
end
