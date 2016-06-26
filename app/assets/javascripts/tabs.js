$(function(){

  $(".link").on("click", function(e){
    var thisTarget = $(this).data("target")
    // Change active link
    console.log(thisTarget)
    $('.link').removeClass('active');
    $(this).addClass('active');
    // Hide all link-content (use class="hidden")
    $('.link-content').addClass('hidden');
    // Intro animation
    $('.link-content').removeClass('intro-animation');

    // Show target link-content (use class="hidden")
    $(thisTarget).removeClass('hidden');
    // Remove intro-animation aninmation class
    $(thisTarget).addClass('intro-animation');

    });
});
