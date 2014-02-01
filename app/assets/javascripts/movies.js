$(function() {
    /*var files = new Array();

    $('#movies_attributes').on('change', prepareUpload)

    function prepareUpload(event) {
        files.push(event.target.files);
        printFile(files)
    }


    function printFile(files){
        var html="";
        for (var i = 0; i < files.length; i++) {
            console.log(files[i])
            html += files[i][0]
        }
        $("#div_movie_files").html(html);
    }*/

    /*var dropArea = document.getElementById('movies_attributes'),
        viewArea = document.getElementById('div_movie_files_preview')

    //console.log(dropArea)
    dropArea.addEventListener('drop', function (evt) {
        evt.preventDefault();
        evt.stopPropagation();

        previewFiles(evt.dataTransfer.files)
        return false;

    }, false)

    function previewFiles(files) {
        for (var i = 0; i <files.length; i++) {
            if (typeof FileReader != "undefined") {
                var img = document.createElement('img');
                viewArea.appendChild(img)

                var reader = new FileReader();
                reader.onload = (function (theImg) {
                    return function(evt) {
                        theImg.src = evt.target.result;
                    }
                }(img))
                reader.readAsDataURL(files[i])
            }
        }

        uploadFiles(files)
    }

    function uploadFiles(files) {
        var formData = new FormData();
        var position = 0;
        var max = files.length;
        if (typeof formData != "undefined") {
            function queue() {
                if (max >=1 && position <= max - 1) {
                    formData.append("file", files[position]);
                    console.log(formData)
                    upload();
                }
            }

            function upload() {
                $.ajax({
                    url: '/movies/create',
                    data: formData,
                    processData: false,
                    contentType: false,
                    type: 'POST',
                    success: function(data) {
                        console.log("Success!.." + data)
                        position = position + 1
                        queue()
                    },
                    error: function() {
                        console.log("Error in fetching data..")
                    }
                })
            }
        }
    }

    //addEventListener 'dragenter'
    dropArea.addEventListener("dragenter", function (evt) {
        if (evt) {
            this.className = "drag-enter";
        }
        endFn(evt)
    }, false)

    //addEventListener 'dragleave'
    dropArea.addEventListener("dragleave", function (evt) {
        this.className = ""
        endFn(evt)
    }, false)

    //addEventListener 'dragover'
    dropArea.addEventListener("dragover", function (evt) {
        endFn(evt)
        evt.dataTransfer.dropEffect = 'move'

        return false;
    }, false)

    function endFn(evt) {
        evt.preventDefault()
        evt.stopPropagation()
    }*/

    //Using jquery-fileupload

})
