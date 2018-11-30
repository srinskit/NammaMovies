<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.js"></script>
<script>
    $(document).ready(function () {
        $('.tooltipped').tooltip();
        $(".dropdown-trigger").dropdown({
            coverTrigger: false,
            constrainWidth: false,
            hover: true
        });
    });
</script>
