// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require moment
//= require fullcalendar

$(document).ready(function () {
                    var date = new Date();
                    var d = date.getDate();
                    var m = date.getMonth();
                    var y = date.getFullYear();
                    var calendar = $('#calendar').fullCalendar({
                        theme: true,
                        header: {
                            left: 'prev,next today',
                            center: 'title',
                            right: 'month, agendaWeek, agendaDay'
                        },
                        defaultView: 'month',
                        editable: true,
                        allDaySlot: false,
                        selectable: true,
                        slotMinutes: 15,
                        select: function(start)
                        {
                            var title = prompt('Event Title:');
                            if (title)
                            {
                                var startHour = prompt('enter start time')
                                var dateStart = prompt('enter start date, you only need DD')
                                calendar.fullCalendar('renderEvent',
                                    {
                                        title: title,
                                        start: new Date(y, m, dateStart),
                                        allDay: false

                                    },
                                    true
                                );
                            }
                            calendar.fullCalendar('unselect');
                        },
                        editable: true,
                        events: [

                        ]
                    });

                });
$.ajax({
  url: 'add_events.php',
  data: 'title='+ title+'&start='+ start2 +'&end='+ end2,                                                    
  type: "POST",
  success: function(json) {
    $( "#getReason" ).modal('hide');
    $('#mydiv').hide();
    $('body').removeClass('blockMask');//calendar.fullCalendar( 'refetchEvents');
    $('#calendar').fullCalendar('refetchEvents');
  }
});