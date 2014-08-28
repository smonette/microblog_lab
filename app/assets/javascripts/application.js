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
//= require_tree .


$(document).on('page:load ready', function() {
  $('.comment-form-toggle').each(function(index, value) {
    $(value).click(function() {
      console.log('link clicked!!!');
      $('.comment-on-comment').each(function(i, v) {
        if (i === index) {
          console.log('form should be showing now!!!');
          $(v).fadeIn('fast');
        }
      });
    });
  });

  $('#comment-form').submit(function(e) {
    e.preventDefault();

    var content = $('.comment-content').val();
    var formURL = $(this).attr('action');


    function testAjax() {
      console.log(content);
      console.log(formURL);
      $.ajax({
        url: formURL,
        type: 'POST',
        data: {"comment" : content} ,
        success: function(data) {
          console.log('SUCCESS WITH DATA', data);
          console.log('CONTENT', content);
          $('#comment-container').append(
               data.content, 
              '<p style="color:green">Comment Saved!</p>');
        },
        error: function(error) {
          console.log('ERROR', error);
          console.log('CONTENT', content);
        }
      });
    }

    testAjax();

  });

  // NOT WORKING YET

  //  $('#subcomment-form').submit(function(e) {
  //   e.preventDefault();

  //   var content = $('.subcomment-content').val();
  //   var formURL = $(this).attr('action');


  //   function testAjax() {
  //     console.log(content);
  //     console.log(formURL);
  //     $.ajax({
  //       url: formURL,
  //       type: 'POST',
  //       data: {"comment" : content} ,
  //       success: function(data) {
  //         console.log('SUCCESS WITH DATA', data);
  //         console.log('CONTENT', content);
  //         // $('#subcomment-container').append(
  //         //      data.content, 
  //         //     '<p style="color:green">Comment Saved!</p>');
  //       },
  //       error: function(error) {
  //         console.log('ERROR', error);
  //         console.log('CONTENT', content);
  //       }
  //     });
  //   }

  //   testAjax();

  // });

});