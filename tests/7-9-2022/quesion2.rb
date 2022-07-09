class CropRatio
  def initialize
    @total_weight = 0
    @crops = {}
  end

  def add(name, crop_weight)
    if @crops.include?(name)
      @crops[name] += crop_weight
    else
      @crops[name] = crop_weight
    end

    @total_weight += crop_weight
  end

  def proportion(name)
    return 0 if @total_weight.zero?
    
    @crops[name] / @total_weight.to_f
  end
end

crop_ratio = CropRatio.new
crop_ratio.add('Wheat', 4)
crop_ratio.add('Wheat', 5)
crop_ratio.add('Rice', 1)

puts crop_ratio.proportion('Wheat')
