/*
 *# Place all the behaviors and hooks related to the matching controller here.
 *# All this logic will automatically be available in application.js.
 *# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
 */


$(document).ready(function() {
//    $(".post").slideDown("slow", "swing")
    tmpSet = $(".post").toArray()
    slideDownSet(tmpSet)
})

function slideDownSet(set) {
    if ($.isArray(set)) {
        if (set.length > 0) {
            doAnimate(set, 0)
        }
    }
    
    function doAnimate(loopset, index) {
        $("#"+set[index].id).fadeIn("fast", "swing", function() {
                if (index < loopset.length-1) {
                    doAnimate(loopset, index+1)
                }
            })
    }
}