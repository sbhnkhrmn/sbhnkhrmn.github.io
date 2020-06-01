    $(document).ready(function () {
        $.ajax({
            type: 'GET',
            url: 'https://sbhnkhrmn.github.io/depictions/com.sbhnkhrmn.accuweather.pro/Accuweather.json',
            dataType: 'json',
            success: function (data) {
                var userLang = navigator.language || navigator.userLanguage;
                if (userLang == 'tr') {
                    $.each(data.HTMLTR, function (key, value) {
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
                    $.each(data.TR, function (key, value) {
                        $("#Package").append(value.Package);
                        $("#Name").append(value.Name);
                        $("#Architecture").append(value.Architecture);
                        $("#Depends").append(value.Depends);
                        $("#Description").append(value.Description);
                        $("#Depiction").append(value.Depiction);
                        $("#Icon").append(value.Icon);
                        $("#Sileodepiction").append(value.Sileodepiction);
                        $("#Homepage").append(value.Homepage);
                        $("#Maintainer").append(value.Maintainer);
                        $("#Author").append(value.Author);
                        $("#Section").append(value.Section);
                        $("#Version").append(value.Version);

                    });
                    return;
                }
                $.each(data.HTMLEN, function (key, value) {
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
                $.each(data.EN, function (key, value) {
                    $("#Package").append(value.Package);
                    $("#Name").append(value.Name);
                    $("#Architecture").append(value.Architecture);
                    $("#Depends").append(value.Depends);
                    $("#Description").append(value.Description);
                    $("#Depiction").append(value.Depiction);
                    $("#Icon").append(value.Icon);
                    $("#Sileodepiction").append(value.Sileodepiction);
                    $("#Homepage").append(value.Homepage);
                    $("#Maintainer").append(value.Maintainer);
                    $("#Author").append(value.Author);
                    $("#Section").append(value.Section);
                    $("#Version").append(value.Version);
                });
            }
        });
    });