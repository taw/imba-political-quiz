tag Results
  prop personal
  prop economic

  def render
    <self>
      "Dunno. Maybe a monarchist {personal} {economic}"

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
  prop answer

  def render
    <self>
      <h5>
        question
      if answer == "yes"
        <div.answer.yes>
          "Agree"
      else if answer == "maybe"
        <div.answer.maybe>
          "Maybe"
      else if answer == "no"
        <div.answer.no>
          "Disagree"
      else
        <div.buttons>
          <button.yes :tap=(do trigger("answered", [question, "yes"]))>
            "Agree"
          <button.maybe :tap=(do trigger("answered", [question, "maybe"]))>
            "Maybe"
          <button.no :tap=(do trigger("answered", [question, "no"]))>
            "Disagree"

tag QuestionGroup
  prop title
  prop questions
  prop answers

  def onanswered(ev, args)
    # Imba 2 will have proper destructuring
    let q = args[0]
    let a = args[1]
    console.log("a", ev, q, a, answers)
    answers[q] = a

  def render
    <self>
      <h2>
        title
      for q in questions
        <Question question=q answer=answers[q]>

tag Quiz
  def setup
    @personal = {}
    @economic = {}

  def everything_answered
    Object.keys(@personal):length == 5 and Object.keys(@economic):length == 5

  def personal_score
    let score = 0
    for q in personal-questions
      if @personal[q] == "yes"
        score += 20
      else if @personal[q] == "maybe"
        score += 10
    score

  def economic_score
    let score = 0
    for q in economic-questions
      if @economic[q] == "yes"
        score += 20
      else if @economic[q] == "maybe"
        score += 10
    score

  def render
    <self>
      <QuestionGroup questions=personal-questions title="Personal issues" answers=@personal>
      <QuestionGroup questions=economic-questions title="Economic issues" answers=@economic>
      if everything_answered
        <Results personal=personal_score() economic=economic_score>

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
