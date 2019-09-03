require 'pry'

class Owner
  # code goes here
  @@all= []
  attr_accessor :pets, :owner
  attr_reader :species, :name, :dogs

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:dogs => [], :cats => []}
    @@all << self
  end

  def save
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
  end



  def buy_dog(name_of_dog)
    @pets[:dogs] << Dog.new(name_of_dog)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name_of_cat)
  end


  def cats
    Cat.self.all
    print
  end

  def walk_dogs
    @pets.collect do |species, instances|
      if species == :dogs
        instances.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
    @pets.collect do |species, instances|
      if species == :cats
        instances.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end

  def sell_pets
      @pets.collect do |species, instances|
        instances.each do |pet|
          pet.mood = "nervous"
        end
        instances.clear
      end
    end

    def list_pets
      num_dogs = @pets[:dogs].size
      num_cats = @pets[:cats].size
      return "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
    end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end
end
