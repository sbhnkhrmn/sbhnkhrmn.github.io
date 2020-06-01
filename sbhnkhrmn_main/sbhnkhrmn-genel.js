$(document).ready(function () {
  var path = window.location.pathname + "/SBHNKHRMN.json";
  debugger;
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
          $("#Restriction").append(value.Restriction);
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
        });
        $.each(data.ChangelogerTR, function (_key, value) {
          $("#Changelog").append(value.Changelog);
        });
        return;
      }
      $.each(data.HTMLEN, function (_key, value) {
        $("#DescriptionDiv").append(value.Description);
        $("#Informations").append(value.Informations);
        $("#Picture").append(value.Picture);
        $("#Changelog").append(value.Changelog);
        $("#DebVersion").append(value.DebVersion);
        $("#Restriction").append(value.Restriction);
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
      });
      $.each(data.ChangelogerEN, function (_key, value) {
        $("#Changelog").append(value.Changelog);
      });
    },
  });
});
