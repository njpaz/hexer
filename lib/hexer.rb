class Hex
  def self.generate
    "#{convert_rgb_to_hex}#{convert_rgb_to_hex}#{convert_rgb_to_hex}"
  end

  def self.create_random_rgb
    rand(0..255)
  end

  def self.convert_rgb_to_hex
    random_rgb = create_random_rgb

    first_hex_value = modify_raw_hex(random_rgb / 16)
    second_hex_value = modify_raw_hex(random_rgb % 16)

    "#{first_hex_value}#{second_hex_value}"
  end

  def self.modify_raw_hex(generated_value)
    if generated_value >= 10
      convert_teens_to_hex(generated_value)
    else
      generated_value
    end
  end

  def self.convert_teens_to_hex(generated_teen)
    teens_hex = ['A', 'B', 'C', 'D', 'E', 'F']

    teens_hex[generated_teen % 10]
  end
end