def transform(old_data)
  store = {}
  old_data.each do |key, values|
    values.each do |value|
      store.merge!(value.downcase => key)
    end
  end
  return store
end
