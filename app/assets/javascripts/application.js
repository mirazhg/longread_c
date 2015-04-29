// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require swiper.jquery
//= require_tree .
//= require_self

$(window).on("scroll", function() {
    $('.l-field_caver').each(function() {
        if (($(window).scrollTop() >= $(this).offset().top)&&($(window).scrollTop() < ($(this).next().offset().top))) {
            if (!($(this).children('.b-field_caver').hasClass('bg_article_none'))) {
                $('.bg_article').css('background-image', $(this).children('.b-field_caver').css('background-image'));
                $(this).children('.b-field_caver').addClass('bg_article_none');
            }
        }
        else {
            if ($(this).children('.b-field_caver').hasClass('bg_article_none')) { $(this).children('.b-field_caver').removeClass('bg_article_none');}
        }

        //end;
    });
});

