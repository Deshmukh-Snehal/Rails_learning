function CheckAll(chk) {
    for (i = 0; i < chk.length; i++)
        chk[i].checked = true;
}

function UnCheckAll(chk) {
    for (i = 0; i < chk.length; i++)
        chk[i].checked = false;
}

function checkCount(elm) {
    var checkboxes = document.getElementsByClassName("checkbox-btn");
    var selected = [];
    for (var i = 0; i < checkboxes.length; ++i) {
        if (checkboxes[i].checked) {
            selected.push(checkboxes[i].value);
        }
    }
    document.getElementById("proId").value = selected.join();
    document.getElementById("total").innerHTML = selected.length;
}

function reset() {
    var checkboxes = document.getElementsByName('check');
    document.getElementsByName("showhide")[0].checked = false;

    for (var i = 0; i < checkboxes.length; i++) {
        var checkid = checkboxes[i].id;
        var split_id = checkid.split("_");
        var rowno = split_id[1];
        checkboxes[i].checked = false;
    }

}