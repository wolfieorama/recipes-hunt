class IngredientsAddition < RailsWorkflow::Operation
  def execute
    self.data[:recipeValid] = false
    save
  end
end
