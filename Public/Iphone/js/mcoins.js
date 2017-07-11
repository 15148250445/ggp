"use strict";
function Coins() {
    this.name = 'Coins';
    this.markets();
    var $this = this;
    setInterval(function() {
        $this.markets();
    }, 10000);
};


Coins.prototype.markets = function($this) {

    var time = 10;
    var isInterval = setInterval(function() {
        $('#coins_timer').html(time + '秒后刷新');
        time --;
        if (time == 0) {
            clearInterval(isInterval);
        }
    }, 1000);

    var toptype=$("select[name=toptype]").val()==undefined?'24_ups':$("select[name=toptype]").val();

    $.ajax({
        type:'get',
        url:'/coins/top5up',
        data:{toptype:toptype},
        dataType:'html',
        success:function(html){
            $("ul.top5").html(html);
        }
    });
    $.get('/coins/markets?t=' + Math.random(), function(result) {
        var result = result.data;
        // trade district
        for (var item in result) {
            for (var i = 0; i < result[item].length; i++) {

                // current
                if (result[item][i].current > result[item][i].preprice) {
                    $('#coins_' + result[item][i].coin_from + '_' + result[item][i].coin_to + '_current');
                    $('#coins_' + result[item][i].coin_from + '_' + result[item][i].coin_to + '_current').text(result[item][i].current);
                } else if (result[item][i].current == result[item][i].preprice) {
                    $('#coins_' + result[item][i].coin_from + '_' + result[item][i].coin_to + '_current');
                    $('#coins_' + result[item][i].coin_from + '_' + result[item][i].coin_to + '_current').text(result[item][i].current);
                } else {
                    $('#coins_' + result[item][i].coin_from + '_' + result[item][i].coin_to + '_current');
                    $('#coins_' + result[item][i].coin_from + '_' + result[item][i].coin_to + '_current').text(result[item][i].current);
                }
                // sum,值判断
                var sum = '';
                var number = result[item][i].sum;
                if(number >= 10000 && number <100000000){
                    sum = String(Math.round(number)/10000);
                    sum = sum.split('.');
                    sum = sum.shift()+'.'+sum.pop().substring(0,2)+'万';
                }else if(number >= 100000000){
                    sum = String(Math.round(number)/100000000);
                    sum = sum.split('.');
                    sum = sum.shift()+'.'+sum.pop().substring(0,2)+'亿';
                }else if(number===null || number == 0){
                    sum = 0;
                }else{
                    sum = result[item][i].sum;
                }

                $('#coins_' + result[item][i].coin_from + '_' + result[item][i].coin_to + '_sum').text(sum);

                // 24_ups
                if (result[item][i]['24_ups'] > 0) {
                    $('#coins_' + result[item][i].coin_from + '_' + result[item][i].coin_to + '_24_ups').attr('class', 'sell');
                    $('#coins_' + result[item][i].coin_from + '_' + result[item][i].coin_to + '_24_ups').text('+' + (result[item][i]['24_ups'] * 100).toFixed(2) + '%');
                } else if (result[item][i]['24_ups'] == 0) {
                    $('#coins_' + result[item][i].coin_from + '_' + result[item][i].coin_to + '_24_ups').attr('class', 'sell');
                    $('#coins_' + result[item][i].coin_from + '_' + result[item][i].coin_to + '_24_ups').text((result[item][i]['24_ups'] * 100).toFixed(2) + '%');
                } else {
                    $('#coins_' + result[item][i].coin_from + '_' + result[item][i].coin_to + '_24_ups').attr('class', 'buy');
                    $('#coins_' + result[item][i].coin_from + '_' + result[item][i].coin_to + '_24_ups').text((result[item][i]['24_ups'] * 100).toFixed(2) + '%');
                }

            }
        }
    });

};

var Coins = new Coins();


