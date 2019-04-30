lady_mae = User.create(name: 'ladyMae')
formula_1 = Formula.create(user: lady_mae, title: 'Learning React Hooks', is_public: false, description: 'Going to teach myself React Hooks. A gentle introduction, if you will.'
)

tag_names = ['Coding Concepts', 'Tutorials', 'React']

tag_names.each do |name|
  t = Tag.create(name: name, user: lady_mae)
  formula_1.tags << t
  formula_1.save
end

formula_1.notes.create(user: formula_1.user, content: "A note about learning React Hooks")


elmts = [
  {
    source_url: 'https://www.youtube.com/embed/mxK8b99iJTg',
    title: 'Intro to React Hooks',
    content_type: 'video',
  },
  {
    source_url: 'https://pbs.twimg.com/media/DyubqDoWwAAyanN.jpg',
    title: 'What are Hooks?',
    content_type: 'image',
  },
  {
    content: "Two Rules of Hooks: Only Call Hooks at the Top Level, Only Call Hooks from React Functions",
    title: 'Rules of Hooks',
    content_type: 'text',
  },
]

elmts.each_with_index do |elmt, idx|
  elmt[:position] = idx
  formula_1.elements.create(elmt)
end

formula_2 = Formula.create(user: lady_mae, title: 'Weekend in Indio', is_public: false, description: 'Planning notes for April weekend in Indio!')

formula_3 = Formula.create(user: lady_mae, title: 'Installing Spring Twists', is_public: false, description: 'Resources to learn how to install the Spring Twist hairstyle.')
