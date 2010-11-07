class SuggestedArticle < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
  	viewed :boolean
    rating                enum_string(:liked, :disliked, :indifferent)
    probability_of_liking :float
    timestamps
  end
  
  belongs_to :user
  belongs_to :article

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
