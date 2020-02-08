tag Grid < svg:g
  def render
    <self>
      <svg:line.outside x1=( 0 + 30 * 0) x2=( 300 + 30 * 0) y1=( 300 - 30 * 0) y2=(600 - 30 * 0)>
      <svg:line         x1=( 0 + 30 * 1) x2=( 300 + 30 * 1) y1=( 300 - 30 * 1) y2=(600 - 30 * 1)>
      <svg:line.thick   x1=( 0 + 30 * 2) x2=( 300 + 30 * 2) y1=( 300 - 30 * 2) y2=(600 - 30 * 2)>
      <svg:line         x1=( 0 + 30 * 3) x2=( 300 + 30 * 3) y1=( 300 - 30 * 3) y2=(600 - 30 * 3)>
      <svg:line.thick   x1=( 0 + 30 * 4) x2=( 300 + 30 * 4) y1=( 300 - 30 * 4) y2=(600 - 30 * 4)>
      <svg:line         x1=( 0 + 30 * 5) x2=( 300 + 30 * 5) y1=( 300 - 30 * 5) y2=(600 - 30 * 5)>
      <svg:line.thick   x1=( 0 + 30 * 6) x2=( 300 + 30 * 6) y1=( 300 - 30 * 6) y2=(600 - 30 * 6)>
      <svg:line         x1=( 0 + 30 * 7) x2=( 300 + 30 * 7) y1=( 300 - 30 * 7) y2=(600 - 30 * 7)>
      <svg:line.thick   x1=( 0 + 30 * 8) x2=( 300 + 30 * 8) y1=( 300 - 30 * 8) y2=(600 - 30 * 8)>
      <svg:line         x1=( 0 + 30 * 9) x2=( 300 + 30 * 9) y1=( 300 - 30 * 9) y2=(600 - 30 * 9)>
      <svg:line.outside x1=( 0 + 30 *10) x2=( 300 + 30 *10) y1=( 300 - 30 *10) y2=(600 - 30 *10)>

      <svg:line.outside x1=( 0 + 30 * 0) x2=( 300 + 30 * 0) y1=( 300 + 30 * 0) y2=(  0 + 30 * 0)>
      <svg:line         x1=( 0 + 30 * 1) x2=( 300 + 30 * 1) y1=( 300 + 30 * 1) y2=(  0 + 30 * 1)>
      <svg:line.thick   x1=( 0 + 30 * 2) x2=( 300 + 30 * 2) y1=( 300 + 30 * 2) y2=(  0 + 30 * 2)>
      <svg:line         x1=( 0 + 30 * 3) x2=( 300 + 30 * 3) y1=( 300 + 30 * 3) y2=(  0 + 30 * 3)>
      <svg:line.thick   x1=( 0 + 30 * 4) x2=( 300 + 30 * 4) y1=( 300 + 30 * 4) y2=(  0 + 30 * 4)>
      <svg:line         x1=( 0 + 30 * 5) x2=( 300 + 30 * 5) y1=( 300 + 30 * 5) y2=(  0 + 30 * 5)>
      <svg:line.thick   x1=( 0 + 30 * 6) x2=( 300 + 30 * 6) y1=( 300 + 30 * 6) y2=(  0 + 30 * 6)>
      <svg:line         x1=( 0 + 30 * 7) x2=( 300 + 30 * 7) y1=( 300 + 30 * 7) y2=(  0 + 30 * 7)>
      <svg:line.thick   x1=( 0 + 30 * 8) x2=( 300 + 30 * 8) y1=( 300 + 30 * 8) y2=(  0 + 30 * 8)>
      <svg:line         x1=( 0 + 30 * 9) x2=( 300 + 30 * 9) y1=( 300 + 30 * 9) y2=(  0 + 30 * 9)>
      <svg:line.outside x1=( 0 + 30 *10) x2=( 300 + 30 *10) y1=( 300 + 30 *10) y2=(  0 + 30 *10)>

tag Results
  prop personal
  prop economic

  def render
    <self>
      "Dunno. Maybe a monarchist {personal} {economic}"

      <svg:svg viewBox="-25 -25 625 625">
        <Grid>
        <svg:circle cx=(300 - personal * 3 + economic * 3) cy=(600 - personal * 3 - economic * 3) r=10>
        <svg:text x=100 y=300>
          "Liberal"
        <svg:text x=500 y=300>
          "Conservative"
        <svg:text x=300 y=100>
          "Libertarian"
        <svg:text x=300 y=300>
          "Center"
        <svg:text x=300 y=500>
          "Statist"

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
      if everything_answered
        <Results personal=personal_score() economic=economic_score>
      <QuestionGroup questions=personal-questions title="Personal issues" answers=@personal>
      <QuestionGroup questions=economic-questions title="Economic issues" answers=@economic>

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
