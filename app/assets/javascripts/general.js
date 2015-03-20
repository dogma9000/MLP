function clickable_fucntion(){
  $(".clickable").click(function(){
    $(this).removeClass("clickable").addClass("one_open_team");
    $(this).find(".extra_info").show();
    one_open_team_fucntion();
  });
};

$(function() {
  clickable_fucntion();
});
