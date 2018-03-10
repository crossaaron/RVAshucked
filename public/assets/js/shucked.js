// When user clicks add-btn
$("#addNotes").on("click", function(event) {
    event.preventDefault();

    // Make a newChirp object
    var newTastingNote = {
        note: $("#tastingNotesComment").val().trim(),
    };

    console.log(newTastingNote);

    // Send an AJAX POST-request with jQuery
    $.post("/api/tasting_notes", newTastingNote)
        // On success, run the following code
        .then(function() {

            var row = $("<div>");
            row.addClass("tastingNote");

            row.append("<p>" + newTastingNote.note + "</p>");

            $("#note-area").prepend(row);

        });

    // Empty each input box by replacing the value with an empty string
    $("#tastingNotesComment").val("");
});