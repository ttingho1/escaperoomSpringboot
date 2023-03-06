$(document).ready(function(){

    $('.history-content li').click(function(){
        var tab_id = $(this).attr('data-tab');

        $('.history-content li').removeClass('current');
        $('.tab-content').removeClass('current');

        $(this).addClass('current');
        $("#"+tab_id).addClass('current');
    });

});

