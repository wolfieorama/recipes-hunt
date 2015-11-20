class ProcessInvalidRecipeTemplate < RailsWorkflow::OperationTemplate
  def resolve_dependency operation
    !operation.data[:recipeValid]
  end
end
