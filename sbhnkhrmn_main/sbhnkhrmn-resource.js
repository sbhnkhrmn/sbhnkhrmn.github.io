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
      if (userLang == "tr") {
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
          $("#Filename").append(value.Filename);
          $("#Size").append(value.Size);
        });
        $.each(data.ChangelogerTR, function (_key, value) {
          $("#Changeloger").append(value.Changeloger);
        });
        $.each(data.Deb, function (_key, value) {
          $("#DebFile").attr("href", value.DebFile).attr("target", "_blank");
        });
        $.each(data.Page, function (_key, value) {
          $("#Title").append(value.Title);
        });
        return;
      }
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
        $("#Filename").append(value.Filename);
        $("#Size").append(value.Size);
      });
      $.each(data.ChangelogerEN, function (_key, value) {
        $("#Changeloger").append(value.Changeloger);
      });
      $.each(data.Page, function (_key, value) {
        $("#Title").append(value.Title);
      });
    },
  });
https://raw.githubusercontent.com/sbhnkhrmn/sbhnkhrmn.github.io/master/depictions/com.sbhnkhrmn.accuweather.pro/4.png
  // var folderPath =
  //   "https://github.com/sbhnkhrmn/sbhnkhrmn.github.io/tree/master/depictions/com.sbhnkhrmn.accuweather.pro/";
  // $.ajax({
  //   url: folderPath,
  //   type: "GET",
  //   crossDomain: true,
  //   crossOrigin: null,
  //   headers: {
  //     "Access-Control-Allow-Origin": "*",
  //     "Access-Control-Allow-Headers": "*",
  //     "Access-Control-Allow-Methods": "POST, GET, OPTIONS",
  //   },
  //   success: function (data) {
  //     debugger;
  //     $(data)
  //       .find("a")
  //       .attr("href", function (i, val) {
  //         if (val.match(/\.(jpe?g|png|jpg|gif)$/)) {
  //           $("#foto").append("<img src='" + folder + val + "'>");
  //         }
  //       });
  //   },
  // });
});
