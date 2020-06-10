$(document).ready(function () {
  var path = window.location.pathname.replace("index.html", "SBHNKHRMN.json");
  $.ajax({
    type: "GET",
    url: path,
    dataType: "json",
    success: function (data) {
      var userLang = navigator.languages
        ? navigator.languages[0]
        : navigator.language || navigator.userLanguage;
      if (userLang == "tr-TR") {
        $.each(data.HTMLTR, function (_key, value) {
          $("#DescriptionDiv").append(value.Description);
          $("#Informations").append(value.Informations);
          $("#Picture").append(value.Picture);
          $("#Changelog").append(value.Changelog);
          $("#DebVersion").append(value.DebVersion);
          $("#Sized").append(value.Sized);
          $("#IOSVersion").append(value.IOSVersion);
          $("#Updated").append(value.Updated);
          $("#AppPRO").append(value.AppPRO);
          $("#Install").append(value.Install);
        });
        $.each(data.TR, function (_key, value) {
          $("#Package").append(value.Package);
          $("#Name").append(value.Name);
          $("#Architecture").append(value.Architecture);
          $("#Depends").append(value.Depends);
          $("#Description").append(value.Description);
          $("#Depiction").append(value.Depiction);
          $("#Icon")
            .attr("src", value.Icon)
            .attr("class", "sk-border-radius sk-app-size zoom");
          $("#Sileodepiction").append(value.Sileodepiction);
          $("#Homepage").attr("href", value.Homepage).attr("target", "_blank");
          $("#Maintainer").append(value.Maintainer);
          $("#Author").append(value.Author);
          $("#Section").append(value.Section);
          $("#Version").append(value.Version);
          $("#Filename").attr("href", value.Filename).attr("target", "_open");
          $("#Size").append(value.Size);
        });
        $.each(data.ChangelogerTR, function (_key, value) {
          $("#Changeloger").append(value.Changeloger);
        });
        // return;
      }
      else {
        $.each(data.HTMLEN, function (_key, value) {
          $("#DescriptionDiv").append(value.Description);
          $("#Informations").append(value.Informations);
          $("#Picture").append(value.Picture);
          $("#Changelog").append(value.Changelog);
          $("#DebVersion").append(value.DebVersion);
          $("#Sized").append(value.Sized);
          $("#IOSVersion").append(value.IOSVersion);
          $("#Updated").append(value.Updated);
          $("#AppPRO").append(value.AppPRO);
          $("#Install").append(value.Install);
        });
        $.each(data.EN, function (_key, value) {
          $("#Package").append(value.Package);
          $("#Name").append(value.Name);
          $("#Architecture").append(value.Architecture);
          $("#Depends").append(value.Depends);
          $("#Description").append(value.Description);
          $("#Depiction").append(value.Depiction);
          $("#Icon")
            .attr("src", value.Icon)
            .attr("class", "sk-border-radius sk-app-size zoom");
          $("#Sileodepiction").append(value.Sileodepiction);
          $("#Homepage").attr("href", value.Homepage).attr("target", "_blank");
          $("#Maintainer").append(value.Maintainer);
          $("#Author").append(value.Author);
          $("#Section").append(value.Section);
          $("#Version").append(value.Version);
          $("#Filename").attr("href", value.Filename).attr("target", "_open");
          $("#Size").append(value.Size);
        });
        $.each(data.ChangelogerEN, function (_key, value) {
          $("#Changeloger").append(value.Changeloger);
        });
      }



      $.each(data.Images, function (_key, value) {
        var count = value.Path.split(',');
        for (let index = 0; index <= count.length; index++) {
          debugger;
          $('#foto').append("<a href='" + index + ".png'><img id=" + index + "  src='" + index + ".png'></a>");


          // $("#SourcesImg").attr("src", value.Path).attr("style", "width:40%");   
          // append($("#pic").attr("src", count[index]).attr("target", "_blank")       
        }

      });
      $.each(data.Page, function (_key, value) {
        $("#Title").append(value.Title);
      });
    },
  });
});
