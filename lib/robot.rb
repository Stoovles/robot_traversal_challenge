class Robot
  attr_reader :x_axis,
              :y_axis,
              :current_direction,
              :current_axis,
              :starting_position


  def initialize
    @x_axis = 0
    @y_axis = 0
    @starting_position = [0, 0]
    @current_direction = 'positive' #possible other direction is 'negative',i.e. counting backwards on the axis
    @current_axis = 'x' #possible other axis is y, i.e. moving up and down
  end

  def movement #G
    if @current_axis == 'x' && @current_direction == 'positive'
      @x_axis += 1
    elsif @current_axis == 'x' and @current_direction == 'negative'
      @x_axis -= 1
    elsif @current_axis == 'y' and @current_direction == 'positive'
      @y_axis += 1
    else
      @y_axis -= 1
    end
  end

  def left #L
    if @current_axis == 'x' && @current_direction == 'positive'
      @current_axis = 'y'
    elsif @current_axis == 'x' && @current_direction == 'negative'
      @current_axis = 'y'
    elsif @current_axis == 'y' && @current_direction == 'positive'
      @current_axis = 'x'
      @current_direction = 'negative'
    elsif @current_axis == 'y' && @current_direction == 'negative'
      @current_axis = 'x'
      @current_direction = 'positive'
    end
  end

  def right #R
    if @current_axis == 'x' && @current_direction == 'positive'
      @current_axis = 'y'
      @current_direction = 'negative'
    elsif @current_axis == 'x' && @current_direction == 'negative'
      @current_axis = 'y'
      @current_direction = 'positive'
    elsif @current_axis == 'y' && @current_direction == 'positive'
      @current_axis = 'x'
    elsif @current_axis == 'y' && @current_direction == 'negative'
      @current_axis = 'x'
    end
  end

  def check_position
    if starting_position == [@x_axis, @y_axis]
      return true
    else
      return false
    end
  end

  def returnsToOrigin(tasks)
    array_tasks = tasks.split('')
    array_tasks.each do |task|
      if task == 'G'
        self.movement
      elsif task == 'L'
        self.left
      elsif task == 'R'
        self.right
      end
    end
    return check_position
  end

end
