class Phone_number
  attr_reader(:number, :type, :area)
  define_method(:initialize) do |attributes|
    @number = attributes.fetch(:number)
    @type = attributes.fetch(:type)
    @area = attributes.fetch(:area)
  end
end
