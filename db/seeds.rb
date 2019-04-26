lady_mae = User.create(name: 'ladyMae')
formula_1 = Formula.create(user: lady_mae, title: 'Learning React Hooks', is_public: false)

tag_names = ['Coding Concepts', 'Tutorials', 'React']

tag_names.each do |name|
  t = Tag.create(name: name, user: lady_mae)
  formula_1.tags << t
  formula_1.save
end

formula_1.notes.create(user: formula_1.user, content: "A note about learning React Hooks")
