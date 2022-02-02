$("#ddlModel").on("change", function() {
    var GetValue = $("#ddlModel").val();
    $("#myTextbox").val(GetValue);
});