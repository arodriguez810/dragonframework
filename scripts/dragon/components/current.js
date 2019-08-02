CURRENT = {
    controller: function () {
        return baseController.currentModel.modelName;
    },
    url: function () {
        var url = location.href;
        url = url.split("/#");
        if (url.length > 1) {
            url = url[1].split("/");
            if (url.length > 0)
                return url[0];
        }
        return "";
    },
};