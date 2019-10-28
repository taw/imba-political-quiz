tag Results
  def render
    <self>
      "Dunno. Maybe a monarchist"

let personal-questions = [
  "Government should not censor speech, press, media, or internet.",
  "Military service should be voluntary. There should be no draft.",
  "There should be no laws regarding sex for consenting adults.",
  "Repeal laws prohibiting adult possession and use of drugs.",
  "There should be no National ID card.",
]

let economic-questions = [
  "End 'corporate welfare.' No government handouts to business.",
  "End government barriers to international free trade.",
  "Let people control their own retirement; privatize Social Security.",
  "Replace government welfare with private charity.",
  "Cut taxes and government spending by 50% or more.",
]

tag Question
  prop question

  def render
    <self>
      <h5>
        question
      <button.yes>
        "Agree"
      <button.maybe>
        "Maybe"
      <button.no>
        "Disagree"

tag Quiz
  def setup
    @answers={}

  def render
    <self>
      <h2>
        "Personal issues"
      for q in personal-questions
        <Question question=q>
      <h2>
        "Economic issues"
      for q in economic-questions
        <Question question=q>

      <Results>

tag App
  def render
    <self>
      <header>
        "World's Smallest Political Quiz"
      <Quiz>
      <footer>
        "Original version at "
        <a href="https://www.theadvocates.org">
          "The Advocates"
        " website. This version is just a demo of Imba programming language."

Imba.mount <App>
