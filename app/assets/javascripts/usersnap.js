function loadUsersnap(){
    var s = document.createElement("script");
    s.type = "text/javascript";
    s.async = true;
    s.src = '//api.usersnap.com/load/'+
	    '<%= Rails.application.config.usersnap_api_key %>'+
            '.js';
    var x = document.getElementsByTagName('script')[0];
    x.parentNode.insertBefore(s, x);
};

$(document).on('page:change', function(event) {
    var usersnapTags = $(document).find(".include-usersnap");
    if (usersnapTags.length){
	loadUsersnap();
    }
});
