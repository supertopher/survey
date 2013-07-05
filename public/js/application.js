$(document).ready(function() {
  var choiceCounter = 2;
  console.log(choiceCounter);
  console.log("I've started:");
  $("#add_choice").on("click", function(e) {
    e.preventDefault();
    choiceCounter++
    var new_choice = "<div class='field_names'>Choice</div><input type='text' name='survey[choice][" + choiceCounter + "]' placeholder='choice'>";
    // var new_choice = "<input type='text' name='survey[choice][2]'' placeholder='choice'></p>";
    console.log(new_choice);
    $("form .choices").append(new_choice);
  });
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
