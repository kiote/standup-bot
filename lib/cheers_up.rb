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
      'Not your best day, huh?'
    ]

    { text: "Got it!\n#{greets.sample}" }
  end
end
