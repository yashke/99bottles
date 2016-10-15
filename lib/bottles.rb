class Bottles
  TEMPLATE = "%{more_bottles} of beer on the wall, %{more_bottles} of beer.\nTake %{taken} down and pass it around, %{less_bottles} of beer on the wall.\n"
  TEMPLATE_EMPTY = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  PLURAL_BOTTLE = "%s bottles"
  SINGULAR_BOTTLE = "1 bottle"

  def verse(number)
    more_bottles_number = human_number(number)
    less_bottles_number = human_number(number - 1)
    template = pick_template(number)

    use_template(template, more_bottles_number, less_bottles_number)
  end

  private
  def use_template(template, more_bottles_number, less_bottles_number)
    template % {
      more_bottles: bottle_form(more_bottles_number),
      less_bottles: bottle_form(less_bottles_number),
      taken: taken_form(more_bottles_number)
    }
  end

  def pick_template(number)
    if number > 0
      TEMPLATE
    else
      TEMPLATE_EMPTY
    end
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
