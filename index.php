<html>
<head>
    <title>Dynamically add Image to a DIV Element using jQuery</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js" crossorigin="anonymous"></script>
<script type="text/javascript">
    $(document).ready(function () {
var folder = 'ikonlar/';
//var folder = window.location.pathname;
$.ajax({
    url : folder,
    success: function (data) {
       
        $(data).find("a").attr("href", function (i, val) {
            if(val.match(/\.(jpe?g|png|jpg|gif)$/)) {   
                $("#fileNames").append("<li><img src='"+ folder + val +"'></li>");              
            }            
        });       
    }
});
    });
</script>
</head>

<body>
  <ul id="fileNames" style="width:auto;"> </ul>
</body>
</html>
