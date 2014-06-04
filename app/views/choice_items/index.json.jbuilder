json.array!(@choice_items) do |choice_item|
  json.extract! choice_item, :id, :article_id, :item, :is_correct
  json.url choice_item_url(choice_item, format: :json)
end
