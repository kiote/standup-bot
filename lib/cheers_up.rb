class CheersUp
  def self.greet
    greets = [
      'Well done!',
      'You are amaizing!',
      'That\'s awesome!',
      'You are awesome!',
      'Lucky you!',
      'Wow, that was something!',
      'I can\'t beleive that!',
      'Let me hug you for that!',
      'Nothing compares to you!',
      'You are a miracle!',
      'And that\'s all you have?',
      'Well, could be worse',
      'Okay, let\'s hope tomorrow will be better than that!',
      'Are you serious?',
      'Not your best day, huh?',
      'I can\'t blame you for that.',
      'God I\'m so depressed.',
      'I\'d give you advice, but you wouldn\'t listen. No one ever does.',
      'I\'ve seen it. It\'s rubbish.',
      'Here I am, brain the size of a planet and they ask me to make notes. Call that job satisfaction?',
      'Sounds awful.'
    ]

    { text: "Got it!\n#{greets.sample}" }
  end
end
